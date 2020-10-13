library ieee;
use ieee.std_logic_1164.all;

Entity PWM_AvalonSlave is
	Port(
		Clk			: IN 		std_logic;
		nReset		: IN		std_logic;
		
		Address		: IN		std_logic_vector (1 DOWNTO 0);
		ChipSelect	: IN		std_logic;
		
		Write_en		: IN		std_logic;
		WriteData	: IN		integer;
		
		outpwm		: OUT	std_logic
	);
end PWM_AvalonSlave;


architecture rtl of PWM_AvalonSlave is
	--these are registers the user is going to write to (they have addresses)
	signal period	: integer		:= 0;
	signal dc	: integer		:= 0;
	signal polarity	: integer		:=0;
	
	--these are used internally
	signal counter : integer		:=	0;
	signal clk_slow : std_logic	:=	'0';
	signal clk_dc	: std_logic		:=	'0';
	signal dc_counter: integer		:=	0;
	
begin

--this process reads what the master has written
	readingReg : Process(Clk, nReset)
	begin
		if nReset = '0' then
			period <= 49999; 	--resets period to 1ms
			dc <= 24999;		--duty cycle to 50%
			polarity <=1;
		else
			if rising_edge(Clk) then
				if ChipSelect = '1' and Write_en='1' then
					case Address(1 DOWNTO 0) is
						when "00"=> period <= WriteData;
						when "01"=> dc <= WriteData;
						when "10"=> polarity <= WriteData;
						when others=> null;
					end case;
				end if;
			end if;
		end if;
	end process readingReg;
	
--a process that counts to simiulate period and duty cycle
	count : Process(Clk)
	variable temp : integer;
	begin
		if rising_edge(Clk) then
			temp := counter+1;
			counter <= temp;
			dc_counter <= temp;
			--this construct assumes dc < period
			--NOTE: After testing in modelSim. I found out period and dc is always 1 greater than you think
			--so Clk is 20 ms, but if you make period 6 and dc 1, the output pwm period will be 7*20=140 ms, and 40 ms high
			if counter = period then --period is how many 50 mhz clk ticks
				counter <= 0;
				dc_counter <=0; --need to restart the counters
				clk_slow <= '1';
			else
				if dc_counter = dc then
					clk_dc <= '1'; -- don't reset the fake clks
				else
					clk_dc <= '0';
					clk_slow <= '0';
				end if;
			end if;
		end if;
	end process count;

--	test_io : Process(period)
--	begin
--		if period > 10000 then
--			outpwm <= '0';
--		else
--			outpwm <= '1';
--		end if;
--	end process test_io;
-- writePWM creates pwm period
	writePWM : Process(clk_slow, clk_dc, polarity, nReset)
	begin
		if nReset = '0' then --Asynchronous reset
			outpwm <= '0';		--it looks like in the parallel port they do this
		else
			--if rising_edge(clk_slow) OR rising_edge(clk_dc) then
			--can't use two rising edges at once
			--the solution below should work as long as the counters are greater than one Clk cycle.
			if clk_slow = '1' then --this assumes clk_dc and clk_slow are at least one Clk tick apart
				if polarity = 0 then
					outpwm <='0';
				else --polarity is 1 (should be default)
					outpwm <='1';
				end if;
			else 
				if clk_dc = '1' then
					if polarity = 0 then
						outpwm <='1';
					else
						outpwm <='0';
					end if;
				end if;
			end if;
		end if;
	end process writePWM;
	
---- writePWM creates pwm period
--	writePWM : Process(clk_slow, clk_dc, nReset)
--	begin
--		if nReset = '0' then --Asynchronous reset
--			outpwm <= '0';		--it looks like in the parallel port they do this
--		else
--			if rising_edge(clk_slow) then
--				if polarity = 0 then
--					outpwm <='0';
--				else --polarity is 1 (should be default)
--					outpwm <='1';
--				end if;
--			end if;
--			if rising_edge(clk_dc) then
--				if polarity = 0 then
--					outpwm <='1';
--				else
--					outpwm <='0';
--				end if;
--			end if;
--		end if;
--	end process writePWM;	

	
----writeDC creates the duty cycle
--	writeDC : Process(clk_dc)
--	begin
--		if rising_edge(clk_dc) then
--				if polarity = 0 then
--					outpwm <='1';
--				else
--					outpwm <='0';
--				end if;
--		end if;
--	end process writeDC;		

end rtl;
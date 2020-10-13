library ieee;
use ieee.std_logic_1164.all;

entity PWM is 
	port (
		FPGA_CLK1_50	:	in		std_logic;
		KEY_N				:	in		std_logic_vector(1 downto 0);
		
		period	:	in		integer;
		dc			:	in		integer;
		polarity	:	in		std_logic_vector(7 downto 0);
		
		GPIO_0           : inout std_logic_vector(35 downto 0)
		);
end entity PWM;

architecture rtl of PWM is
	component PWM_system is
		port (
			clk				: in std_logic			:='X';
			reset				: in std_logic			:='X';
			pio_period		: in integer;
			pio_dc			: in integer;
			pio_polarity	: in std_logic_vector(7 downto 0);
			pio_output		: out std_logic
		);
	end component PWM_system;

	signal outpwm	: std_logic		:=	'0';
	signal counter : integer		:=	0;
	signal clk_slow : std_logic	:=	'0';
	signal clk_dc	: std_logic		:=	'0';
	signal dc_counter: integer		:=	0;
	
begin

	p : component PWM_system
		port map(
			clk			=>	FPGA_CLK1_50,
			reset			=>	KEY_N(0),
			pio_period	=>	period,
			pio_dc		=> dc,
			pio_polarity => polarity,
			pio_output 	=> GPIO_0(0)
		);
		
	count : Process(FPGA_CLK1_50)
	variable temp : integer;
	begin
		if rising_edge(FPGA_CLK1_50) then
			temp := counter+1;
			counter <= temp;
			dc_counter <= temp;
			--this construct assumes dc < period
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
	
-- writePWM creates pwm period
	writePWM : Process(clk_slow, KEY_N)
	begin
		if KEY_N(0) = '1' then --Asynchronous reset
			outpwm <= '0';
		else
			if rising_edge(clk_slow) then
				if polarity(0) = '0' then
					outpwm <='0';
				else --polarity is 1 (should be default)
					outpwm <='1';
				end if;
				GPIO_0(0) <= outpwm;
			end if;
		end if;
	end process writePWM;	

	
--writeDC creates the duty cycle
	writeDC : Process(clk_dc)
	begin
		if rising_edge(clk_dc) then
				if polarity(0) = '0' then
					outpwm <='1';
				else
					outpwm <='0';
				end if;
				GPIO_0(0) <= outpwm;
		end if;
	end process writeDC;		

end rtl;
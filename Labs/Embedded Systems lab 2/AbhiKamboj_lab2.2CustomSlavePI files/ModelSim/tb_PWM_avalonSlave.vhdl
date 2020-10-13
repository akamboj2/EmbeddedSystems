library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_PWM is 
end tb_PWM;

--to test use 'restart -f; run 10us;' command in the transcript cmd prompt

architecture test of tb_PWM is
	constant CLK_PERIOD : time := 20 ns; --this is 50MHz clk

	signal Clk		:	std_logic;
	signal nReset		:	std_logic;
	signal Address		:	std_logic_vector (1 DOWNTO 0);
	signal ChipSelect	:	std_logic;
	signal Write_en		:	std_logic;
	signal WriteData	:	integer; --std_logic_vector (7 DOWNTO 0);	
	signal outpwm		:	std_logic;
begin
	dut : entity work.PWM_AvalonSlave
	port map(Clk => Clk, 
		nReset => nReset,
		Address => Address,
		ChipSelect => ChipSelect,
		Write_en =>Write_en,
		WriteData => Writedata,
		outpwm => outpwm
		);
	
	clk_gen : process
	begin
		Clk <= '1';
		wait for CLK_PERIOD/2;
		Clk <= '0';
		wait for CLK_PERIOD/2;
	end process clk_gen;

	simulation : process
	begin
		-- write period
		Address <= "00";
		ChipSelect <= '1';
		Write_en <= '1';
		WriteData <=  9; -- 100ns period
		wait for CLK_PERIOD*2;
		-- write dc
		Address <= "01";
		ChipSelect <= '1';
		Write_en <= '1';
		WriteData <= 1;
		wait for CLK_PERIOD*2;
		--write polarity
		Address <= "10";
		ChipSelect <= '1';
		Write_en <= '1';
		WriteData <= 1;
		wait for CLK_PERIOD*2;
	
			
		wait for 10 us;
	end process simulation;

end architecture test;
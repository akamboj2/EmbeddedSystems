	component PWM_system is
		port (
			clk_clk             : in  std_logic                     := 'X';             -- clk
			pio_dc_export       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			pio_output_export   : out std_logic;                                        -- export
			pio_period_export   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			pio_polarity_export : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			reset_reset_n       : in  std_logic                     := 'X'              -- reset_n
		);
	end component PWM_system;

	u0 : component PWM_system
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			pio_dc_export       => CONNECTED_TO_pio_dc_export,       --       pio_dc.export
			pio_output_export   => CONNECTED_TO_pio_output_export,   --   pio_output.export
			pio_period_export   => CONNECTED_TO_pio_period_export,   --   pio_period.export
			pio_polarity_export => CONNECTED_TO_pio_polarity_export, -- pio_polarity.export
			reset_reset_n       => CONNECTED_TO_reset_reset_n        --        reset.reset_n
		);


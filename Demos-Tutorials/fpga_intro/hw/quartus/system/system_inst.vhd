	component system is
		port (
			clk_clk                                : in  std_logic                    := 'X'; -- clk
			pio_0_external_connection_export       : out std_logic_vector(7 downto 0);        -- export
			pwm_0_conduit_end_writeresponsevalid_n : out std_logic;                           -- writeresponsevalid_n
			reset_reset_n                          : in  std_logic                    := 'X'  -- reset_n
		);
	end component system;

	u0 : component system
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                       clk.clk
			pio_0_external_connection_export       => CONNECTED_TO_pio_0_external_connection_export,       -- pio_0_external_connection.export
			pwm_0_conduit_end_writeresponsevalid_n => CONNECTED_TO_pwm_0_conduit_end_writeresponsevalid_n, --         pwm_0_conduit_end.writeresponsevalid_n
			reset_reset_n                          => CONNECTED_TO_reset_reset_n                           --                     reset.reset_n
		);


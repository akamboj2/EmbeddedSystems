	component pwm_system is
		port (
			clk_clk                  : in  std_logic := 'X'; -- clk
			pwm_0_conduit_end_export : out std_logic;        -- export
			reset_reset_n            : in  std_logic := 'X'  -- reset_n
		);
	end component pwm_system;

	u0 : component pwm_system
		port map (
			clk_clk                  => CONNECTED_TO_clk_clk,                  --               clk.clk
			pwm_0_conduit_end_export => CONNECTED_TO_pwm_0_conduit_end_export, -- pwm_0_conduit_end.export
			reset_reset_n            => CONNECTED_TO_reset_reset_n             --             reset.reset_n
		);


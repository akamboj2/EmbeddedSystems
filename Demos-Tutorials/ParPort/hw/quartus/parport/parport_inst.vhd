	component parport is
		port (
			clk_clk                      : in    std_logic                    := 'X';             -- clk
			parport_0_conduit_end_export : inout std_logic_vector(7 downto 0) := (others => 'X'); -- export
			reset_reset_n                : in    std_logic                    := 'X'              -- reset_n
		);
	end component parport;

	u0 : component parport
		port map (
			clk_clk                      => CONNECTED_TO_clk_clk,                      --                   clk.clk
			parport_0_conduit_end_export => CONNECTED_TO_parport_0_conduit_end_export, -- parport_0_conduit_end.export
			reset_reset_n                => CONNECTED_TO_reset_reset_n                 --                 reset.reset_n
		);


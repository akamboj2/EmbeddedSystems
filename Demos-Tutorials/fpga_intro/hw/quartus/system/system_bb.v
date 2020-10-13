
module system (
	clk_clk,
	pio_0_external_connection_export,
	pwm_0_conduit_end_writeresponsevalid_n,
	reset_reset_n);	

	input		clk_clk;
	output	[7:0]	pio_0_external_connection_export;
	output		pwm_0_conduit_end_writeresponsevalid_n;
	input		reset_reset_n;
endmodule

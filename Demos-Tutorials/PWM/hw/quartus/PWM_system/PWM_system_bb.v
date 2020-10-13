
module PWM_system (
	clk_clk,
	pio_dc_export,
	pio_output_export,
	pio_period_export,
	pio_polarity_export,
	reset_reset_n);	

	input		clk_clk;
	input	[31:0]	pio_dc_export;
	output		pio_output_export;
	input	[31:0]	pio_period_export;
	input	[7:0]	pio_polarity_export;
	input		reset_reset_n;
endmodule

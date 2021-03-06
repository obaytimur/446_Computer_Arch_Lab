module register_file #(W=16) (in, rs1, rs2, rs3, we, reset, clock, out1, out2);
	input [W-1:0] in;
	input [1:0] rs1, rs2, rs3;
	input we, reset, clock;
	output [W-1:0] out1, out2;
	
	wire [3:0] each_en;
	wire [W-1:0] mux_in1, mux_in2, mux_in3, mux_in4;
	
	decoder_2x4 dec (rs1[1], rs1[0], each_en);			// Enable for each register is chosen with decoder
	
	mux_4x1 #(W) mux1(mux_in4, mux_in3, mux_in2, mux_in1, rs2, out1);	// Output of mux is chosen according to its select
	mux_4x1 #(W) mux2(mux_in4, mux_in3, mux_in2, mux_in1, rs3, out2);
	
	simp_reg_sync_reset_with_enable #(W) reg1 (in, reset, each_en[0] & we, clock, mux_in1);	// registers are constructed
	simp_reg_sync_reset_with_enable #(W) reg2 (in, reset, each_en[1] & we, clock, mux_in2);
	simp_reg_sync_reset_with_enable #(W) reg3 (in, reset, each_en[2] & we, clock, mux_in3);
	simp_reg_sync_reset_with_enable #(W) reg4 (in, reset, each_en[3] & we, clock, mux_in4);
	
endmodule

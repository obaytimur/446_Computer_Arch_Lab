module register_file #(W=32) (in, rs1, rs2, rs3, we, reset, clock, out1, out2, isBranch);
	input [W-1:0] in;
	input [2:0] rs1, rs2, rs3;
	input we, reset, clock, isBranch;
	output [W-1:0] out1, out2;
	
	wire [7:0] each_en;
	wire [W-1:0] m6, m5, m4, m3, m2, m1, m0;
	reg [W-1:0] reg7;
	
	always@* begin
	if(isBranch) begin
	reg7 = in;
	end
	end
	
	decoder_3x8 dec (rs3, each_en);			// Enable for each register is chosen with decoder
	
	mux_8x1 #(W) mux1(reg7, m6, m5, m4, m3, m2, m1, m0, rs1, out1);	// Output of mux is chosen according to its select
	mux_8x1 #(W) mux2(reg7, m6, m5, m4, m3, m2, m1, m0, rs2, out2);
	
	simp_reg_sync_reset_with_enable #(W) reg0 (in, reset, each_en[0] && we, clock, m0);	// registers are constructed
	simp_reg_sync_reset_with_enable #(W) reg1 (in, reset, each_en[1] && we, clock, m1);
	simp_reg_sync_reset_with_enable #(W) reg2 (in, reset, each_en[2] && we, clock, m2);
	simp_reg_sync_reset_with_enable #(W) reg3 (in, reset, each_en[3] && we, clock, m3);
	simp_reg_sync_reset_with_enable #(W) reg4 (in, reset, each_en[4] && we, clock, m4);
	simp_reg_sync_reset_with_enable #(W) reg5 (in, reset, each_en[5] && we, clock, m5);
	simp_reg_sync_reset_with_enable #(W) reg6 (in, reset, each_en[6] && we, clock, m6);


	
	
endmodule

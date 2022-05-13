module register_file #(W=32) (in, rs1, rs2, rs3, we, reset, clock, out1, out2);
	input [W-1:0] in;
	input [3:0] rs1, rs2, rs3;
	input we, reset, clock;
	output [W-1:0] out1, out2;
	
	wire [15:0] each_en;
	wire [W-1:0] m16, m15, m14, m13, m12, m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1;
	
	decoder_4x16 dec (rs3, each_en);			// Enable for each register is chosen with decoder
	
	mux_16x1 #(W) mux1(m16, m15, m14, m13, m12, m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, rs1, out1);	// Output of mux is chosen according to its select
	mux_16x1 #(W) mux2(m16, m15, m14, m13, m12, m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, rs2, out2);
	
	simp_reg_sync_reset_with_enable #(W) reg1 (in, reset, each_en[0] && we, clock, m1);	// registers are constructed
	simp_reg_sync_reset_with_enable #(W) reg2 (in, reset, each_en[1] && we, clock, m2);
	simp_reg_sync_reset_with_enable #(W) reg3 (in, reset, each_en[2] && we, clock, m3);
	simp_reg_sync_reset_with_enable #(W) reg4 (in, reset, each_en[3] && we, clock, m4);
	simp_reg_sync_reset_with_enable #(W) reg5 (in, reset, each_en[4] && we, clock, m5);
	simp_reg_sync_reset_with_enable #(W) reg6 (in, reset, each_en[5] && we, clock, m6);
	simp_reg_sync_reset_with_enable #(W) reg7 (in, reset, each_en[6] && we, clock, m7);
	simp_reg_sync_reset_with_enable #(W) reg8 (in, reset, each_en[7] && we, clock, m8);
	simp_reg_sync_reset_with_enable #(W) reg9 (in, reset, each_en[8] && we, clock, m9);
	simp_reg_sync_reset_with_enable #(W) reg10 (in, reset, each_en[9] && we, clock, m10);
	simp_reg_sync_reset_with_enable #(W) reg11 (in, reset, each_en[10] && we, clock, m11);
	simp_reg_sync_reset_with_enable #(W) reg12 (in, reset, each_en[11] && we, clock, m12);
	simp_reg_sync_reset_with_enable #(W) reg13 (in, reset, each_en[12] && we, clock, m13);
	simp_reg_sync_reset_with_enable #(W) reg14 (in, reset, each_en[13] && we, clock, m14);
	simp_reg_sync_reset_with_enable #(W) reg15 (in, reset, each_en[14] && we, clock, m15);
	simp_reg_sync_reset_with_enable #(W) reg16 (in, reset, each_en[15] && we, clock, m16);
	
	
endmodule

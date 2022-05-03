module alp(clock, reset, DATA_IN, OP, LOAD, COMP, CLR, OUT_0, OUT_1, ERR);

	input clock, reset, LOAD, COMP, CLR;
	input[2:0] OP;
	input[3:0] DATA_IN;
	
	output[3:0] OUT_0, OUT_1;
	output ERR;
	
	wire R0_en, R1_en;
	wire acc_en, acc_PS, acc_RL, acc_reset;
	wire Q_en, Q_PS, Q_RL, Q_reset;
	wire qn1_en, qn1_reset, RST, Qn, qn1_out, overflow;
	
	wire mux_alu_a_sel;
	wire[1:0] mux_alu_b_sel, mux_R0_sel, mux_R1_sel;
	wire[2:0] alu_op;
	
	
	cont_unit cont_unit_deneme(acc_en, acc_PS, acc_RL, alu_op, clock, mux_alu_a_sel,
						mux_alu_b_sel, mux_R0_sel, mux_R1_sel, Q_en, Q_PS, Q_RL,
						Qn, qn1_en, qn1_out, qn1_reset, R0_en, R1_en, reset,
						acc_reset, Q_reset, OP, LOAD, COMP, CLR, RST);
						
	datapath datapath_deneme(.acc_en(acc_en), .acc_PS(acc_PS), .acc_RL(acc_RL), .alu_op(alu_op), .mux_alu_a_sel(mux_alu_a_sel),
									.mux_alu_b_sel(mux_alu_b_sel), .mux_R0_sel(mux_R0_sel), .mux_R1_sel(mux_R1_sel), .Q_en(Q_en), .Q_PS(Q_PS), .Q_RL(Q_RL),
									.Qn(Qn), .qn1_en(qn1_en), .qn1_out(qn1_out), .qn1_reset(qn1_reset), .R0_en(R0_en), .R1_en(R1_en), .reset(RST),
									.acc_reset(acc_reset), .Q_reset(Q_reset), .data(DATA_IN), .clock(clock), .R0(OUT_0), .R1(OUT_1), .overflow(overflow));
									
									
									
	assign ERR= overflow & COMP;
endmodule

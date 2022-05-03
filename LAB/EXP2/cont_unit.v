module cont_unit (acc_en, acc_PS, acc_RL, alu_op, clock, mux_alu_a_sel,
						mux_alu_b_sel, mux_R0_sel, mux_R1_sel, Q_en, Q_PS, Q_RL,
						Qn, qn1_en, qn1_out, qn1_reset, R0_en, R1_en, reset,
						acc_reset, Q_reset, OP, LOAD, COMP, CLR, RST);
	//inputs
	input clock, reset, LOAD, COMP, CLR, Qn, qn1_out;
	input[2:0] OP;
	
	//outputs
	output reg R1_en, R0_en;	// R1 and R0 enables
	output reg acc_en, acc_PS, acc_RL, acc_reset; // Accumulator signals
	output reg Q_en, Q_PS, Q_RL, Q_reset; // Q register signals
	output reg qn1_en, qn1_reset, RST;		// Qn+1 signals & RST signal
	
	output reg mux_alu_a_sel;
	output reg[1:0] mux_alu_b_sel, mux_R0_sel, mux_R1_sel; // muxs
	
	output reg[2:0] alu_op;
	
	reg[1:0] seq_count, state; // sequence counter & state , internal signal
	
	
	
	always@(posedge clock) begin		// start at the positive clock edge to decide states
		if(reset) begin
			state <= 2'b00;		// system gets reset
		end 
		else begin
			if(state==2'b00) begin		// STATE 0
				if(CLR) begin
					state <= 2'b00;		// system gets reset again
				end 
				else begin
					if(LOAD) begin
						state <= 2'b00;		// system gets reset again
					end 
					else begin
						if(COMP==0) begin
							state <= 2'b00;	// system gets reset again
						end 
						else begin
							if(OP==3'b010) begin	// Multiplication
								state <= 2'b01;	
								seq_count <= 2'b11;	// sequence counter is three
							end 
							else begin
								state <= 2'b00;		// reset again
							end
						end
					end
				end
			end 
			else if(state==2'b01) begin
				state<=2'b10;					// second state goes to third state
			end 
			else if(state==2'b10) begin		// state 2
				if(seq_count==2'b00) begin
					state <= 2'b11;				// when sequence counter is zero goes to state 3
				end 
				else begin
					state <= 2'b01;
					seq_count <= seq_count-1;
				end
					
			end 
			else if(state==2'b11) begin	//state 3
				state <= 2'b00;
			end
		end
	end
	
	always@(state, OP,LOAD, COMP, CLR) begin// produce control signals
	
	// STATE 0
	if(state==2'b00) begin
		if(CLR==1) begin
			RST = 1 ;				// reset system
		end 
		else begin
			RST = 0;
			if(LOAD==1) begin		// load 
				mux_R0_sel = 2'b01;
				mux_R1_sel = 2'b00;
				R0_en = 1;
				R1_en = 1;
			end 
			else begin
				if(COMP==1) begin	// computations
					if(OP==3'b000) begin			// addition
						mux_R0_sel = 2'b00;
						mux_R1_sel = 2'b11;
						mux_alu_a_sel = 0;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b000;
					end 
					else if(OP==3'b001) begin	// substraction
						mux_R0_sel = 2'b00;
						mux_R1_sel = 2'b11;
						mux_alu_a_sel = 0;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b001;
					end 
					else if(OP==3'b010) begin	// multiplication
						mux_alu_a_sel = 1;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b000;
						acc_reset = 1;
						qn1_reset = 1;
						R0_en = 0;
						R1_en = 0;
						Q_en = 1;
						Q_PS= 1;
					end 
					else if(OP==3'b100) begin	// and
						mux_R0_sel = 2'b00;
						mux_R1_sel = 2'b11;
						mux_alu_a_sel = 0;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b100;
					end 
					else if(OP==3'b101) begin	// or
						mux_R0_sel = 2'b00;
						mux_R1_sel = 2'b11;
						mux_alu_a_sel = 0;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b101;
					end 
					else if(OP==3'b110) begin	// exor
						mux_R0_sel = 2'b00;
						mux_R1_sel = 2'b11;
						mux_alu_a_sel = 0;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b110;
					end 
					else if(OP==3'b111) begin	// btc
						mux_R0_sel = 2'b00;
						mux_R1_sel = 2'b11;
						mux_alu_a_sel = 0;
						mux_alu_b_sel = 2'b00;
						alu_op = 3'b011;
					end
				end
			end
		end
	end 
	
	//STATE 1
	else if(state==2'b01) begin
		acc_reset = 0;
		qn1_reset = 0;
		if({Qn,qn1_out} == 2'b00 || {Qn,qn1_out} == 2'b11) begin
			acc_en=0;
			Q_en=0;
		end 
		else if({Qn,qn1_out} == 2'b01) begin
			mux_alu_a_sel = 0;
			mux_alu_b_sel = 2'b10;
			alu_op = 3'b000;
			Q_en = 0 ;
			acc_en = 1;
			acc_PS = 1;
		end 
		else if({Qn,qn1_out} == 2'b10) begin
			mux_alu_a_sel = 0;
			mux_alu_b_sel = 2'b10;
			alu_op = 3'b010;
			Q_en = 0 ;
			acc_en = 1;
			acc_PS = 1;
		end
	end 
	
	//STATE 2
	else if(state==2'b10) begin
		Q_en=1;
		Q_PS = 0;
		Q_RL = 1;
		qn1_en = 1;
		acc_en = 1;
		acc_PS = 0;
		acc_RL = 1;
		end 
	// STATE 3
	else if(state==2'b11) begin
		mux_R0_sel = 2'b10;
		mux_R1_sel = 2'b01;
		R0_en = 1;
		R1_en = 1;
	end
end

endmodule
		
				
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
			
			
			
			
			
			
			
			
			
			
			
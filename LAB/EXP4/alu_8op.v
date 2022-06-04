module alu_8op #(parameter W=8) (A, B, con3, out, CO, OVF, N, Z, isFlagChange);
	input isFlagChange;
	input [W-1:0] A, B;
	input [2:0] con3;
	output reg CO, OVF, N, Z;
	output reg [W-1:0] out;
	
	reg [W-1:0] A_new, B_new;
	
	always@*
	begin
	
		if (con3==3'b000) begin
			if(isFlagChange) begin
				{CO,out}=A+B;													// Adding
			if (A[W-1]==B[W-1] && A[W-1]!=out[W-1]) begin		// Overflow deciding comparing the sign bits
				OVF=1;
			end else begin
				OVF=0;
			end
			N=out[W-1];														// Look sign bit to set N
			Z=(out==0);														// If output is all zeros, then Z is 1
			end else begin
				out = A+B;
			end
				
		end else if (con3==3'b001) begin
			B_new=~B;														// B complement
			if(isFlagChange) begin
			{CO,out}=A+B_new+1'b1;										// A is added to , (B'+1), twos complement of B
			if (A[W-1]!=B[W-1] && A[W-1]!=out[W-1]) begin		// Overflow deciding comparing the sign bits
				OVF=1;
			end else begin
				OVF=0;
			end
			N=out[W-1];														// Look sign bit to set N
			Z=(out==0);														// If output is all zeros, then Z is 1
			end else begin
			out = A + B_new + 1'b1;
			end
		
		end else if (con3==3'b010) begin
			A_new=~A;														// A complement
			if(isFlagChange) begin
			{CO,out}=A_new+B+1'b1;										// B is added to , (A'+1), twos complement of A
			if ((A[W-1]!=B[W-1]) && (B[W-1]!=out[W-1])) begin		// Overflow deciding comparing the sign bits
				OVF=1;
			end else begin
				OVF=0;
			end
			N=out[W-1];														// Look sign bit to set N
			Z=(out==0);														// If output is all zeros, then Z is 1
			end else begin
			out = A_new + B + 1'b1;
			end
			
		end else if (con3==3'b011) begin
			out=A^B;															// EXOR'ing
			if(isFlagChange) begin
			CO=0;																// No carry out
			OVF=0;															// No overflow
			N=out[W-1];														// Look sign bit to set N
			Z=(out==0);														// If output is all zeros, then Z is 1
			end
		
		end else if (con3==3'b100) begin
			out=A & B;														// And'ing
			if(isFlagChange) begin
			CO=0;																// No carry out
			OVF=0;															// No overflow
			N=out[W-1];														// Look sign bit to set N
			Z=(out==0);														// If output is all zeros, then Z is 1
			end
		
		end else if (con3==3'b101) begin
			out=A | B;														// Or'ing
			if(isFlagChange) begin
			CO=0;																// No carry out
			OVF=0;															// No overflow
			N=out[W-1];														// Look sign bit to set N
			Z=(out==0);														// If output is all zeros, then Z is 1
			end
		end else if (con3==3'b110) begin
		out = B;
		
		end else if (con3==3'b111) begin
		out = A;
		end
		
	end
endmodule

module mux_8x1 #(parameter W=16) (i7, i6, i5, i4, i3, i2, i1, i0, s, out);
	input [W-1:0] i7, i6, i5, i4, i3,i2,i1,i0;
	input [2:0] s;
	output reg [W-1:0] out;
	
	always@*
	begin
		if (s==3'b000) begin					// as in a normal mux if selects are 00, then output is i0
			out=i0;
		end else if (s==3'b001) begin		// for selects 001 output is the second input i1, and so on
			out=i1;
		end else if (s==3'b010) begin		
			out=i2;
		end else if (s==3'b011) begin		
			out=i3;
		end else if (s==3'b100) begin		
			out=i4;
		end else if (s==3'b101) begin		
			out=i5;
		end else if (s==3'b110) begin		
			out=i6;
		end else if (s==3'b111) begin		
			out=i7;

		end
	end
	
endmodule
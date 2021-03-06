module mux_16x1 #(parameter W=32) (i15, i14, i13, i12, i11, i10, i9, i8, i7, i6, i5, i4, i3, i2, i1, i0, s, out);
	input [W-1:0] i15, i14, i13, i12, i11, i10, i9, i8, i7, i6, i5, i4, i3,i2,i1,i0;
	input [3:0] s;
	output reg [W-1:0] out;
	
	always@*
	begin
		if (s==4'b0000) begin					// as in a normal mux if selects are 00, then output is i0
			out=i0;
		end else if (s==4'b0001) begin		// for selects 0001 output is the second input i1, and so on
			out=i1;
		end else if (s==4'b0010) begin		
			out=i2;
		end else if (s==4'b0011) begin		
			out=i3;
		end else if (s==4'b0100) begin		
			out=i4;
		end else if (s==4'b0101) begin		
			out=i5;
		end else if (s==4'b0110) begin		
			out=i6;
		end else if (s==4'b0111) begin		
			out=i7;
		end else if (s==4'b1000) begin		
			out=i8;
		end else if (s==4'b1001) begin		
			out=i9;
		end else if (s==4'b1010) begin		
			out=i10;
		end else if (s==4'b1011) begin		
			out=i11;
		end else if (s==4'b1100) begin		
			out=i12;
		end else if (s==4'b1101) begin		
			out=i13;
		end else if (s==4'b1110) begin		
			out=i14;
		end else if (s==4'b1111) begin		
			out=i15;
		end
	end
	
endmodule
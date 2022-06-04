module mux_4x1 #(parameter W=16) (i3,i2,i1,i0,s,out);
	input [W-1:0] i3,i2,i1,i0;
	input [1:0] s;
	output reg [W-1:0] out;
	
	always@*
	begin
		if (s==2'b00) begin					// as in a normal mux if selects are 00, then output is i0
			out=i0;
		end else if (s==2'b01) begin		// for selects 01 output is the second input i1,
			out=i1;
		end else if (s==2'b10) begin		// for selects 10 output is the third input i2,
			out=i2;
		end else if (s==2'b11) begin		// for selects 11 output is the fourth input i3.
			out=i3;
		end
	end
	
endmodule
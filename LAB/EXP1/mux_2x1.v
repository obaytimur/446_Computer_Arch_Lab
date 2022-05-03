module mux_2x1 #(parameter W=16) (i1,i0,s,out);
	input [W-1:0] i1,i0;		// inputs are W bit long
	input s;
	output reg [W-1:0] out;
	
	always@*					// is select, s, is zero then i0 is the output
	begin						// and if the select is one, then i1 is the output
		if (s==0) begin
			out=i0;
		end else if (s==1) begin
			out=i1;
		end
	end

endmodule
	
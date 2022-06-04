module const_value #(parameter W=16,value=0)(out);

	output [W-1:0] out;	// this is the output bus width equal to W
	
	assign out=value;
	
endmodule

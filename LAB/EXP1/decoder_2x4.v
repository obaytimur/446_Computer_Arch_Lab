module decoder_2x4 (s1,s0,out);
	input s1,s0;
	output reg [3:0] out;
	
	initial begin				// initially output is turned off, depending 
		out=4'b0000;			//	on the sources -s1,s0- it generates output
	end

	always@*
	begin
		if (s1==1'b0 && s0==1'b0) begin
			out=4'b0001;
		end else if (s1==1'b0 && s0==1'b1) begin
			out=4'b0010;
		end else if (s1==1'b1 && s0==1'b0) begin
			out=4'b0100;
		end else if (s1==1'b1 && s0==1'b1) begin
			out=4'b1000;
		end
	end

endmodule 
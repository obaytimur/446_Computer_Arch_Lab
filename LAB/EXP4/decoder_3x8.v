module decoder_3x8 (select,out);
	input [2:0] select;
	output reg [7:0] out;
	
	initial begin				// initially output is turned off, depending 
		out=8'b0;			
	end

	always@*
	begin
		if (select == 3'b000) begin
			out=16'h1;
		end else if (select == 3'b001) begin
			out=16'h2;
		end else if (select == 3'b010) begin
			out=16'h4;
		end else if (select == 3'b011) begin
			out=16'h8;
		end else if (select == 3'b100) begin
			out=16'h10;
		end else if (select == 3'b101) begin
			out=16'h20;
		end else if (select == 3'b110) begin
			out=16'h40;
		end else if (select == 3'b111) begin
			out=16'h80;
		end
	end

endmodule 
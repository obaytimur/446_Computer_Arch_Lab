module decoder_4x16 (select,out);
	input [3:0] select;
	output reg [15:0] out;
	
	initial begin				// initially output is turned off, depending 
		out=4'b0000;			
	end

	always@*
	begin
		if (select == 4'b0000) begin
			out=16'h1;
		end else if (select == 4'b0001) begin
			out=16'h2;
		end else if (select == 4'b0010) begin
			out=16'h4;
		end else if (select == 4'b0011) begin
			out=16'h8;
		end else if (select == 4'b0100) begin
			out=16'h10;
		end else if (select == 4'b0101) begin
			out=16'h20;
		end else if (select == 4'b0110) begin
			out=16'h40;
		end else if (select == 4'b0111) begin
			out=16'h80;
		end else if (select == 4'b1000) begin
			out=16'h100;
		end else if (select == 4'b1001) begin
			out=16'h200;
		end else if (select == 4'b1010) begin
			out=16'h400;
		end else if (select == 4'b1011) begin
			out=16'h800;
		end else if (select == 4'b1100) begin
			out=16'h1000;
		end else if (select == 4'b1101) begin
			out=16'h2000;
		end else if (select == 4'b1110) begin
			out=16'h4000;
		end else if (select == 4'b1111) begin
			out=16'h8000;
		end
	end

endmodule 
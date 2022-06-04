module shift #(parameter W=8) (input_data, output_data, shift_type);

input [W-1:0] input_data;		// input and output initialization
output reg [W-1:0] output_data;
input [1:0] shift_type;

always@* begin
	if(shift_type==3'b000) begin // nothing is shifted
	output_data = input_data;
	
	end else if (shift_type==3'b001) begin // shifted data is cleared
	output_data = 0;
	
	end else if (shift_type==3'b010) begin // rotate left
	output_data = {input_data[W-2:0],input_data[W-1]};
	
	end else if (shift_type==3'b011) begin // rotate right
	output_data = {input_data[0],input_data[W-1:1]};
	
	end else if (shift_type==3'b100) begin // shift left
	output_data = {input_data[W-2:0], 1'b0};
	
	end else if (shift_type==3'b101) begin // arithmetic shift right
	output_data = {input_data[1], input_data[W-1:1]};
	
	end else if (shift_type==3'b110) begin // logical shift right
	output_data = {1'b0, input_data[W-1:1]};
	end
	
end
	
endmodule

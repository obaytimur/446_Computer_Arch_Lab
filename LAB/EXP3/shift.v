module shift(input_data, output_data, shift_type, shift_amount, shift_enable);

input [31:0] input_data;		// input and output initialization
output reg [31:0] output_data;
input [1:0] shift_type;
input [4:0] shift_amount;
input shift_enable;

always@* begin
	if(shift_enable == 0) begin	// if enable is zero, no shift
		output_data <= input_data;
	end 
	else begin 							// otherwise shift data
		if(shift_type == 2'b00) begin	// if type is 00, it is left shift
			output_data <= input_data << shift_amount;
		end
		else if (shift_type == 2'b01) begin // if type is 01, it is right shift
			output_data <= input_data >> shift_amount;
		end
	end
end
	
endmodule

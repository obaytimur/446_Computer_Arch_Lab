module cont_unit (instruction, RegSrc, RegWrite, AluControl, AluSrc, ShiftEnb, MemWrite, MemtoReg, Nowrite);

input [31:0] instruction;
output RegSrc, RegWrite, AluSrc, ShiftEnb, MemWrite, Nowrite;
output reg [2:0] AluControl;
output reg [1:0] MemtoReg;

assign RegSrc = (instruction[27:26] == 2'b01 && instruction[22] == 0 ) || (instruction [27:26] == 2'b00 && instruction[24:20] == 5'b10101) ;

assign Nowrite = (instruction [27:26] == 2'b00 && instruction[24:20] == 5'b10101);

assign RegWrite = ~RegSrc;

assign AluSrc = (instruction[27:26] == 2'b01);

assign ShiftEnb = (instruction[27:26] == 2'b00 && instruction[25:21] == 5'b01101 && instruction[6:5] == 2'b00 && instruction[11:4] != 0)
						|| (instruction[27:26] == 2'b00 && instruction[25:21] == 5'b01101 && instruction[6:5] == 2'b01);
						
assign MemWrite = (instruction[27:26] == 2'b01 && instruction[22] == 0 && instruction[20] == 0);

always@(*) begin
	if(instruction[27:26] == 2'b01) begin
		MemtoReg = 2'b01;
	end 
	else if(instruction[27:26] == 2'b00) begin
		if(instruction[24:21] == 4'b0000 || instruction[24:21] == 4'b0010 || instruction[24:21] == 4'b0100 || instruction[24:21] == 4'b1100) begin
			MemtoReg = 2'b00;
		end
		else if(instruction[24:21] == 4'b1101) begin
			MemtoReg = 2'b10;
		end
	end
	else begin
		MemtoReg = 2'b01;
	end
end

always@(instruction) begin
	if ( instruction[27:26] == 2'b00) begin
		if (instruction[24:21] == 4'b0100) begin
			AluControl = 3'b000;
		end
		else if (instruction[24:21] == 4'b0010) begin
			AluControl = 3'b001;
		end
		else if (instruction[24:21] == 4'b0000) begin
			AluControl = 3'b100 ;
		end
		else if (instruction[24:21] == 4'b1100) begin
			AluControl = 3'b101;
		end
		else if (instruction[24:21] == 4'b1010) begin
			AluControl = 3'b010;
		end
	end
	else if (instruction[27:26] == 2'b01) begin
		AluControl = 3'b000;
	end
end

endmodule


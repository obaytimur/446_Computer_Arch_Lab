module extend(imm, extimm);

input [11:0] imm;			// input initialization for 12 bit immediate
output reg [31:0] extimm;	// output initialization for 32 bit extended output

always@* begin

if (imm[11] == 1)	// signed extension if twelveth bit is 1, extend ones
	assign extimm = {20'b1, imm};
else if (imm[11] == 0) 
	assign extimm = {20'b0, imm}; // otherwise, extend zeros
end
	
endmodule
	
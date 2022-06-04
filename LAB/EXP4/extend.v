module extend(imm, extimm);

input [11:0] imm;			// input initialization for 12 bit immediate
output [31:0] extimm;	// output initialization for 32 bit extended output

assign extimm = {20'b0, imm};
	
endmodule
	
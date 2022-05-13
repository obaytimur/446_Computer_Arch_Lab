module single_cycle_processor(clock, reset, pc, alu_cont, alu_result, result, rd1, rd2, comp_flag);

input clock, reset;
output [31:0] pc, alu_result, result, rd1, rd2;
output[2:0] alu_cont;
output comp_flag;

wire[31:0] instruction;
wire [2:0] AluControl;
wire [1:0] MemtoReg;
wire RegSrc, RegWrite, AluSrc, ShiftEnb, MemWrite, CompFlag;

assign alu_cont = AluControl;

cont_unit cont(instruction, RegSrc, RegWrite, AluControl, AluSrc, ShiftEnb, MemWrite, MemtoReg, CompFlag);

datapath dpath (.clock(clock), .reset(reset), .prog_counter(pc), .RegWrite(RegWrite), .inst(instruction), .rd1(rd1), .rd2(rd2),
					 .alu_result(alu_result), .result(result), .ShiftEn(ShiftEnb), .RegSrc(RegSrc), .AluSrc(AluSrc), .comp(CompFlag),
					 .MemWrite(MemWrite), .AluControl(AluControl), .comp_flag(comp_flag), .MemtoReg(MemtoReg) );
					 
endmodule

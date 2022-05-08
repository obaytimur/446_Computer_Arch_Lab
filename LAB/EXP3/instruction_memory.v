module instruction_memory #(parameter adr_width = 32, data_width = 32) (address, read_data, clock);

input clock;						// input, output initialization
input [adr_width-1:0] address;
output [data_width-1:0] read_data;

reg [data_width-1:0] content[50:0];			// reg initialization for the content at the address


// function is taken from here "https://www.intel.com/content/www/us/en/programmable/quartushelp/13.0/mergedProjects/hdl/vlog/vlog_pro_inferred_memories.htm"
initial begin
	$readmemb("data_memory.txt", content);	// reads data at the address unconditionally
end													

assign read_data=content[address];			// assigns the content to the output unconditionally
endmodule

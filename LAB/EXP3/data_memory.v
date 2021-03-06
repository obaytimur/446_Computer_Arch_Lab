module data_memory #(parameter adr_width = 32, data_width = 32) (address, write_data, read_data, write_enable, clock);

input clock, write_enable;						// input, output initialization
input [adr_width-1:0] address;
input [data_width-1:0] write_data;
output [data_width-1:0] read_data;

reg [data_width-1:0] content[50:0];			// reg initialization for the content at the address


// function is taken from here "https://www.intel.com/content/www/us/en/programmable/quartushelp/13.0/mergedProjects/hdl/vlog/vlog_pro_inferred_memories.htm"
initial begin
	$readmemb("data_memory.txt", content);	// reads data at the address unconditionally
end													

assign read_data=content[address];			// assigns the content to the output unconditionally

always@(posedge clock)							// each clock cycle check write enables
	if(write_enable)								// if true, writes the data into the address
		content[address] <= write_data;
endmodule

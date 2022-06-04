module unified_memory #(parameter adr_width = 32, data_width = 32) (address, read_data, clock, write_data, write_enb);

input clock, write_enb;						// input, output initialization
input [adr_width-1:0] address, write_data;
output [data_width-1:0] read_data;

reg [data_width-1:0] content[50:0];			// reg initialization for the content at the address


// function is taken from here "https://www.intel.com/content/www/us/en/programmable/quartushelp/13.0/mergedProjects/hdl/vlog/vlog_pro_inferred_memories.htm"
initial begin
	$readmemb("unified_memory.txt", content);	// reads data at the address unconditionally
end													

assign read_data=content[address];			// assigns the content to the output unconditionally

always@(posedge clock)
	if(write_enb) begin
		content[address][data_width-1:0] = write_data;
	end

endmodule

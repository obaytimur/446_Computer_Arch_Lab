module simp_reg_sync_reset #(parameter W=16) (in, reset, clock, out);
	input [W-1:0] in;
	input clock, reset;
	output reg [W-1:0] out;
	
	always@(posedge clock)
	begin
		if (reset==1) begin			// If reset is 1, output is zero
			out=0;						// Otherwise, input is loaded to output
		end else begin 
			out=in;
		end
	end
endmodule

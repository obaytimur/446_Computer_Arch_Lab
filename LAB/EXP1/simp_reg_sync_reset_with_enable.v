module simp_reg_sync_reset_with_enable #(parameter W=16) (in, reset, enable, clock, out);
	input [W-1:0] in;
	input clock, reset, enable;
	output reg [W-1:0] out;
	
	always@(posedge clock)
	begin
		if (reset==1) begin			// If reset is 1, output is zero
			out=0;						// Otherwise, input is loaded to output
		end else begin 
			if (enable==1) begin
				out=in;
			end
		end
	end
endmodule

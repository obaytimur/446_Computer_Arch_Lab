module shift_reg #(parameter W=16) (in, reset, PS, RL, inL, inR, clock, out, en);
	input [W-1:0] in;
	input clock, reset, PS, RL, inL, inR, en;
	output reg [W-1:0] out;
	
	always@(posedge clock)
	begin
		if (reset==1) begin					// If reset is 1, output is zero
			out=0;								// Otherwise, the other operations are done
		end else begin
			if(en==1) begin
				if (PS==1) begin					// If PS signal is 1, input is loaded into output
					out=in;
				end else begin				
					if(RL==1)begin			
						out={inL,out[W-1:1]};	// When RL is 1, output is shifted right with the bit on the left
					end else begin
						out={out[W-2:0],inR};	// Similarly, when RL is 0, output shifted left with the bit on the right
					end
				end
			end
		end
	end
endmodule

module decoder_test_bench();
	reg clk, reset;
	reg s1, s0;
	reg [3:0] out_exp;
	wire [3:0] out;
	
	reg [3:0] vectornum, errors; // bookkeeping variables
	reg [5:0] testvectors[3:0]; // array of testvectors
	
	// instantiate device under test
	decoder_2x4 dut(.s1(s1), .s0(s0), .out(out));
	
	
		// generate clock
	always // no sensitivity list, so it always executes
		begin
			clk = 1; #5; clk = 0; #5;
		end
		
		
			// at start of test, load vectors and pulse reset
	initial
		begin
			$readmemb("D:/OKUL/4-2/446/LAB/EXP1/decoder_test_vector.tv", testvectors);
			vectornum = 0; errors = 0; reset = 0;
		end
		
		
		// apply test vectors on rising edge of clk
	always @(posedge clk)
		begin
			#1; {s1,s0,out_exp} = testvectors[vectornum];
		end
		
		
		// check results on falling edge of clk		
	always @(negedge clk)
	if (~reset) begin // skip during reset
		if (out !== out_exp) begin
			$display("Error: s1=%h, s0=%h", s1, s0);
			$display("Output = %h (%h expected)",out,out_exp);
			errors = errors + 1;
		end
			// increment array index and read next testvector
		vectornum = vectornum + 1;
		if (vectornum==4) begin
			$display("%d tests completed with %d errors",vectornum, errors);
			$stop;
		end
	end
	
endmodule

module mux_2x1_test_bench();
	reg clk, reset, select;
	reg [1:0] i1, i0, out_exp;
	wire [1:0] out;
	
	reg [4:0] vectornum, errors; // bookkeeping variables
	reg [6:0] testvectors[15:0]; // array of testvectors
	
	// instantiate device under test
	mux_2x1 #(2) dut(.i1(i1),.i0(i0),.s(select),.out(out));
	
	
		// generate clock
	always // no sensitivity list, so it always executes
		begin
			clk = 1; #5; clk = 0; #5;
		end
		
		
			// at start of test, load vectors and pulse reset
	initial
		begin
			$readmemb("D:/OKUL/4-2/446/LAB/EXP1/mux_2x1_test_vector.tv", testvectors);
			vectornum = 0; errors = 0; reset = 0;
		end
		
		
		// apply test vectors on rising edge of clk
	always @(posedge clk)
		begin
			#1; {i1, i0, select, out_exp} = testvectors[vectornum];
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
		if (vectornum==16) begin
			$display("%d tests completed with %d errors",vectornum, errors);
			$stop;
		end
	end
	
endmodule

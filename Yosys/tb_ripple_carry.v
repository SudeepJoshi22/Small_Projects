module tb_ripple_carry;
	reg  [7:0] x,y;
	wire [8:0] sum;
	
	ripple_carry dut(x,y,sum);
	
	initial
	begin
		$dumpfile("ripple_carry.vcd");
		$dumpvars(0,tb_ripple_carry);
		#10
		x = 8'hf4;
		y = 8'h29;
		#10 $finish;
	end
endmodule

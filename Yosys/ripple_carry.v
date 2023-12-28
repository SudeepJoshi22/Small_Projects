module ripple_carry(
	input [7:0] x,
	input [7:0] y,
	output [8:0] sum
);
	wire [8:0] co;
	
	genvar i;
	
	generate
		for(i=0;i<8;i=i+1) begin
			if(i == 1'b0)
				fa m0(x[i],y[i],1'b0,sum[i],co[1]);
			else
				fa mx(x[i],y[i],co[i],sum[i],co[i+1]);
		end
	endgenerate
	assign sum[8] = co[8];

endmodule

module fa(
input a,
input b,
input cin,
output s,
output co
);
wire s0,c0,c1;

ha m0(a,b,s0,c0);

ha m1(cin,s0,s,c1);

assign co = c0 | c1;

endmodule

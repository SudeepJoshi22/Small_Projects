module ha(
input a,
input b,
output s,
output co
);

assign s = a^b;
assign co = a&b; 

endmodule

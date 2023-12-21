module comb(
input a,b,c,
output y
);

assign y = a?(b?(a & c ):c):(!c);

endmodule

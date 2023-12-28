module counter_opt (input clk , input reset , output [2:0] q);
 reg [2:0] count;
 assign q = count;

 always @(posedge clk ,posedge reset)
 begin
  if(reset)
   count <= 3'b000;
  else
   count <= count + 1;
 end
endmodule

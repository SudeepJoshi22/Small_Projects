`timescale 1ns / 1p
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2023 20:16:42
// Design Name: 
// Module Name: synchronizer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module synchronizer #(parameter DATA_WIDTH = 8)(
input wire clk,
input wire rst_n,
input wire [DATA_WIDTH-1:0] Din,
output reg [DATA_WIDTH-1:0] Dout
);
reg [DATA_WIDTH-1:0] q1;

always @(posedge clk) begin
if(!rst_n)begin
    q1 <= 0;
    Dout <= 0;
end
else begin
    q1 <= Din;
    Dout <= q1;
end
end

endmodule

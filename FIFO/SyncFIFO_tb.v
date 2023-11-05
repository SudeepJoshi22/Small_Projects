`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2023 19:31:26
// Design Name: 
// Module Name: SyncFIFO_tb
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


module SyncFIFO_tb;
parameter DATA_WIDTH = 32;
parameter FIFO_DEPTH = 8;

reg clk;
reg rst;
reg en;
reg rd;
reg wr;
reg [DATA_WIDTH-1:0] Din;
wire FULL;
wire EMPTY;
wire [DATA_WIDTH-1:0] Dout;
integer i;

SyncFIFO
#(DATA_WIDTH,
FIFO_DEPTH)
DUT(
clk,
rst,
en,
rd,
wr,
Din,
FULL,
EMPTY,
Dout
);

initial clk <= 0;
always #10 clk <= ~clk;

initial
begin
    rst <= 0;
    en <= 0;
    rd <= 0;
    wr <= 0;
    #8
    rst <= 1;
    wr <= 1;
    en <= 1;
    for(i=0;i<8;i=i+1) begin
        #20
        Din <= i+2; 
    end
    #20
    wr <= 0;
    rd <= 1;
    #200 $finish;
end

endmodule

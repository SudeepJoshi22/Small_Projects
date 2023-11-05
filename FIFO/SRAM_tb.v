`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2023 17:55:56
// Design Name: 
// Module Name: SRAM_tb
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


module SRAM_tb;
parameter DATA_WIDTH = 8;
parameter BUS_WIDTH = 8;

reg clk;
reg rst;
reg rd_en;
reg wr_en;
reg cs;
reg [BUS_WIDTH-1:0] read_addr;
reg [BUS_WIDTH-1:0] write_addr;
reg [DATA_WIDTH-1:0] Din;
wire [DATA_WIDTH-1:0]Dout;

SRAM #(DATA_WIDTH,BUS_WIDTH)
DUT(
clk,
rst,
rd_en,
wr_en,
cs,
read_addr,
write_addr,
Din,
Dout
);

initial clk <= 0;
always #10 clk <= ~clk;

initial
begin
    cs <= 1;
    rst <= 0;
    rd_en <= 0;
    wr_en <= 0;
    Din <= 0;
    read_addr <= 0;
    write_addr <= 0;
    #8
    wr_en <= 1;
    write_addr <= 10;
    Din <= 1000;
    #20
    rd_en <= 1;
    read_addr <= 10;
    write_addr <= 20;
    Din <= 2000;
    #20
    wr_en <= 0;
    read_addr <= 20;
end

endmodule

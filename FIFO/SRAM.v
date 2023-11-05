`timescale 1ns / 1ps
`default_nettype none

module SRAM
#(parameter DATA_WIDTH = 8,
parameter BUS_WIDTH = 8)(
input wire clk,
input wire rst,
input wire rd_en,
input wire wr_en,
input wire cs,
input wire [BUS_WIDTH-1:0] read_addr,
input wire [BUS_WIDTH-1:0] write_addr,
input wire [DATA_WIDTH-1:0] Din,
output wire [DATA_WIDTH-1:0]Dout
);
reg [DATA_WIDTH-1:0] memory[0:(2**BUS_WIDTH)-1] ;
reg [DATA_WIDTH-1:0] Read_data;
integer i;

always @(posedge clk)
begin
    if(!rst) begin
        for(i=0;i<(2**BUS_WIDTH);i=i+1)
            memory[i] <= 0;
    end
    if(rd_en && cs)
        Read_data <= memory[read_addr];
    if(wr_en && cs)
        memory[write_addr] <= Din;
end

assign Dout = (rd_en && cs)? Read_data : 'hz;
endmodule

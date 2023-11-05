`timescale 1ns / 1ps
`default_nettype none

// Not a proper way to write this

module SyncFIFO
#(parameter DATA_WIDTH = 32,
FIFO_DEPTH = 8)
(
input wire clk,
input wire rst,
input wire en,
input wire rd,
input wire wr,
input wire [DATA_WIDTH-1:0] Din,
output wire FULL,
output wire EMPTY,
output reg [DATA_WIDTH-1:0] Dout
);
reg [$clog2(FIFO_DEPTH)-1:0] Count;
reg [$clog2(FIFO_DEPTH)-1:0] ReadCount=0;
reg [$clog2(FIFO_DEPTH)-1:0] WriteCount=0;
reg [DATA_WIDTH-1:0] FIFO[FIFO_DEPTH-1:0];

assign EMPTY = (Count == 0)?1'b1:1'b0;
assign FULL = (Count == 8)?1'b1:1'b0;

always @(posedge clk)
begin
    if(!en);
    else
        begin
            if(!rst) begin
                ReadCount <= 0;
                WriteCount <= 0;
            end
            else if((rd == 1) && (Count != 0)) begin
                Dout <= FIFO[ReadCount];
                ReadCount <= ReadCount + 1;
            end
            else if((wr == 1) && (Count < 8)) begin
                FIFO[WriteCount] <= Din;
                WriteCount <= WriteCount + 1;
            end
            else;
        end
    if(ReadCount == 8)
        ReadCount <= 0;
    if(WriteCount == 8)
        WriteCount <= 0;
    if(ReadCount < WriteCount)
        Count <= WriteCount -ReadCount;
    else
        Count <= ReadCount - WriteCount;
end
        
endmodule
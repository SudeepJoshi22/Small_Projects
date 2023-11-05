`timescale 1ns / 1ps


module FF(
input clk,
input rst,
input D,
output Q,
output Q_bar
);
reg Q;
wire Q_bar;

always @(posedge clk,negedge rst) begin
    if(~rst) begin
        Q <= 1'b0;
    end
    else begin
        Q <= D; 
    end
end

assign Q_bar = ~Q;

endmodule

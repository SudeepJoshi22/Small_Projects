`timescale 1ns / 1ps

module tb_MUX_7x1();

  reg [6:0]i;

  reg [2:0]s;

  wire y;

  MUX_7x1 uut(i,s,y);


initial
    begin
    $dumpfile("MUX_7x1.vcd");
    $dumpvars(0,tb_MUX_7x1);
    i=0;
    s=0;
    
    #300 $finish;
    end

always #10 i=i+1;
always #25 s=s+1;

endmodule


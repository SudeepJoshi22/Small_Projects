module d_flip_flop (
    input wire clk,      // Clock input
    input wire reset,    // Asynchronous reset
    input wire reset_n,  // Synchronous reset (active-low)
    input wire d,        // Data input
    output reg q         // Output
);

    // Asynchronous reset (active-high)
    always @ (posedge clk or posedge reset_n)
    begin
        if (reset)
            q <= 1'b0;  // Reset the output asynchronously
        else if (reset_n)  // Synchronous reset (active-low)
            q <= 1'b0;  // Reset the output synchronously
        else
            q <= d;     // Update output on positive clock edge
    end

endmodule


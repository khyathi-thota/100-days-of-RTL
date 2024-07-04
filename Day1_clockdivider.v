module clockdivider ( clk,rst,divideby2,divideby4,divideby8,divideby16);
    input clk;     // Input clock signal
    input rst;     // Reset signal (active low)
    output reg divideby2;   // Output: divided by 2
    output reg divideby4;   // Output: divided by 4
    output reg divideby8;   // Output: divided by 8
    output reg divideby16;   // Output: divided by 16
    reg [3:0] count;    // 4-bit counter to divide clock

    // Sequential logic triggered on positive edge of `clk`
    always @(posedge clk) begin
        if (~rst) 
          count = 4'b0000;  // Reset counter to 0 when reset (`rst`) is active low
        else
            count = count + 1; // Increment counter on each positive edge of `clk`

        // Output signals based on counter value
        divideby2  = count[0];  // Output: divided by 2
        divideby4  = count[1];  // Output: divided by 4
        divideby8  = count[2];  // Output: divided by 8
        divideby16 = count[3];  // Output: divided by 16
    end

endmodule

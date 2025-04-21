// Module definition for mod10_counter.v
module mod10_counter(input clk, input rst, output reg [3:0] Q);
    always @(posedge clk or posedge rst)
        if (rst) Q <= 0;
        else if (Q == 9) Q <= 0;
        else Q <= Q + 1;
endmodule

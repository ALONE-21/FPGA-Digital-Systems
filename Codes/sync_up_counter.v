// Module definition for sync_up_counter.v
module sync_up_counter(input clk, input rst, output reg [3:0] Q);
    always @(posedge clk or posedge rst)
        if (rst) Q <= 0;
        else Q <= Q + 1;
endmodule

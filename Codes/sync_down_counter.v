// Module definition for sync_down_counter.v
module sync_down_counter(input clk, input rst, output reg [3:0] Q);
    always @(posedge clk or posedge rst)
        if (rst) Q <= 4'b1111;
        else Q <= Q - 1;
endmodule

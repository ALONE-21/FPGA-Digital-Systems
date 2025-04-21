// Module definition for sync_updown_counter.v
module sync_updown_counter(input clk, input rst, input up, output reg [3:0] Q);
    always @(posedge clk or posedge rst)
        if (rst) Q <= 0;
        else if (up) Q <= Q + 1;
        else Q <= Q - 1;
endmodule

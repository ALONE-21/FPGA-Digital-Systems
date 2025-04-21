// Module definition for ripple_counter.v
module t_ff(input T, input clk, input rst, output reg Q);
    always @(posedge clk or posedge rst)
        if (rst) Q <= 0;
        else if (T) Q <= ~Q;
endmodule

module ripple_counter(input clk, input rst, output [3:0] Q);
    wire t1, t2, t3;
    t_ff ff0(1'b1, clk, rst, Q[0]);
    t_ff ff1(Q[0], clk, rst, Q[1]);
    t_ff ff2(Q[1], clk, rst, Q[2]);
    t_ff ff3(Q[2], clk, rst, Q[3]);
endmodule

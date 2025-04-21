// Module definition for t_flipflop.v
module t_flipflop(input T, input CLK, output reg Q);
    always @(posedge CLK)
        if (T)
            Q <= ~Q;
endmodule

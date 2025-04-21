// Module definition for d_flipflop.v
module d_flipflop(input D, input CLK, output reg Q);
    always @(posedge CLK)
        Q <= D;
endmodule

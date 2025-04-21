// Module definition for sr_flipflop.v
module sr_flipflop(input S, input R, input CLK, output reg Q);
    always @(posedge CLK)
        case({S,R})
            2'b00: Q <= Q;
            2'b01: Q <= 0;
            2'b10: Q <= 1;
            2'b11: Q <= 1'bx;
        endcase
endmodule

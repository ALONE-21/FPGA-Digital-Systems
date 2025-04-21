// Module definition for jk_flipflop.v
module jk_flipflop(input J, input K, input CLK, output reg Q);
    always @(posedge CLK)
        case({J,K})
            2'b00: Q <= Q;
            2'b01: Q <= 0;
            2'b10: Q <= 1;
            2'b11: Q <= ~Q;
        endcase
endmodule

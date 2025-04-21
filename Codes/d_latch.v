// Module definition for d_latch.v
module d_latch(input D, input EN, output Q);
    assign Q = EN ? D : Q;
endmodule

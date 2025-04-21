// Module definition for sr_latch.v
module sr_latch(input S, input R, output Q, output Qn);
    assign Q = ~(R & Qn);
    assign Qn = ~(S & Q);
endmodule

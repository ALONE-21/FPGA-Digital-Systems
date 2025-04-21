// Module definition for full_subtractor_gl.v
module full_subtractor_gl(input A, input B, input Bin, output DIFF, output BORROW);
    wire d1, b1, b2, b3;
    xor(d1, A, B);
    xor(DIFF, d1, Bin);
    and(b1, ~A, B);
    and(b2, ~d1, Bin);
    or(BORROW, b1, b2);
endmodule

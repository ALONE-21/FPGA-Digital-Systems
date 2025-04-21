// Module definition for half_subtractor_gl.v
module half_subtractor_gl(input A, input B, output DIFF, output BORROW);
    xor(DIFF, A, B);
    and(BORROW, ~A, B);
endmodule

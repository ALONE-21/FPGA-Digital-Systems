module half_adder_gl(input A, input B, output SUM, output CARRY);
    xor(SUM, A, B);
    and(CARRY, A, B);
endmodule
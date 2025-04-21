// Module definition for full_adder_df.v
module full_adder_df(input A, input B, input Cin, output SUM, output CARRY);
    assign SUM = A ^ B ^ Cin;
    assign CARRY = (A & B) | (B & Cin) | (A & Cin);
endmodule

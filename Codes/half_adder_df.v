module half_adder_df(input A, input B, output SUM, output CARRY);
    assign SUM = A ^ B;
    assign CARRY = A & B;
endmodule
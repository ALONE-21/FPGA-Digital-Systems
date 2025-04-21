// Module definition for half_subtractor_df.v
module half_subtractor_df(input A, input B, output DIFF, output BORROW);
    assign DIFF = A ^ B;
    assign BORROW = ~A & B;
endmodule

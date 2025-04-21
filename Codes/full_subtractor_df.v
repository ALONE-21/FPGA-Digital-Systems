// Module definition for full_subtractor_df.v
module full_subtractor_df(input A, input B, input Bin, output DIFF, output BORROW);
    assign DIFF = A ^ B ^ Bin;
    assign BORROW = (~A & B) | (~(A ^ B) & Bin);
endmodule

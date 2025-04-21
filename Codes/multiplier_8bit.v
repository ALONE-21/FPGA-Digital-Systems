// Module definition for multiplier_8bit.v
module multiplier_8bit(input [7:0] A, input [7:0] B, output [15:0] PRODUCT);
    assign PRODUCT = A * B;
endmodule

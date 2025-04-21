// Module definition for bcd_to_xs3.v
module bcd_to_xs3(input [3:0] BCD, output [3:0] XS3);
    assign XS3 = BCD + 4'b0011;
endmodule

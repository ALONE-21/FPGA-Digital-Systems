// Module definition for adder_8bit.v
module full_adder(input A, input B, input Cin, output SUM, output CARRY);
    assign SUM = A ^ B ^ Cin;
    assign CARRY = (A & B) | (B & Cin) | (A & Cin);
endmodule

module adder_8bit(input [7:0] A, input [7:0] B, output [7:0] SUM, output CARRY);
    wire [7:0] carry;
    genvar i;
    generate
        for(i = 0; i < 8; i = i + 1) begin : adder
            if (i == 0)
                full_adder FA (A[i], B[i], 0, SUM[i], carry[i]);
            else
                full_adder FA (A[i], B[i], carry[i-1], SUM[i], carry[i]);
        end
    endgenerate
    assign CARRY = carry[7];
endmodule

// 7. 8-Bit Multiplier (Structural)
module multiplier_8bit(input [7:0] A, input [7:0] B, output [15:0] PRODUCT);
    assign PRODUCT = A * B;
endmodule

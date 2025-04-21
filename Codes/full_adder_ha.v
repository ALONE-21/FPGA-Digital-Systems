// Module definition for full_adder_ha.v
module half_adder(input A, input B, output SUM, output CARRY);
    assign SUM = A ^ B;
    assign CARRY = A & B;
endmodule

module full_adder_ha(input A, input B, input Cin, output SUM, output CARRY);
    wire s1, c1, c2;
    half_adder HA1 (.A(A), .B(B), .SUM(s1), .CARRY(c1));
    half_adder HA2 (.A(s1), .B(Cin), .SUM(SUM), .CARRY(c2));
    assign CARRY = c1 | c2;
endmodule

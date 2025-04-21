// Module definition for decoder3to8.v
module decoder3to8(input [2:0] A, output reg [7:0] Y);
    always @(A) begin
        Y = 8'b00000000;
        Y[A] = 1'b1;
    end
endmodule

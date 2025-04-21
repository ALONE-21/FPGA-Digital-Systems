// Module definition for mux8to1_using_4to1.v
module mux4to1(input [3:0] D, input [1:0] S, output Y);
    assign Y = (S == 2'b00) ? D[0] :
               (S == 2'b01) ? D[1] :
               (S == 2'b10) ? D[2] : D[3];
endmodule

module mux8to1_using_4to1(input [7:0] D, input [2:0] S, output Y);
    wire y0, y1;
    mux4to1 m1(.D(D[3:0]), .S(S[1:0]), .Y(y0));
    mux4to1 m2(.D(D[7:4]), .S(S[1:0]), .Y(y1));
    assign Y = (S[2] == 0) ? y0 : y1;
endmodule

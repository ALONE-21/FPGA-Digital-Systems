// Module definition for binary_to_bcd.v
module binary_to_bcd(input [7:0] BIN, output reg [11:0] BCD);
    integer i;
    always @(*) begin
        BCD = 0;
        for (i = 7; i >= 0; i = i - 1) begin
            if (BCD[11:8] >= 5) BCD[11:8] = BCD[11:8] + 3;
            if (BCD[7:4] >= 5)  BCD[7:4] = BCD[7:4] + 3;
            if (BCD[3:0] >= 5)  BCD[3:0] = BCD[3:0] + 3;
            BCD = BCD << 1;
            BCD[0] = BIN[i];
        end
    end
endmodule

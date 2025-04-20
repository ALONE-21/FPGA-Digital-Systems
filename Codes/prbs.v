// Module definition for prbs.v
module prbs(input clk, input rst, output reg out);
    reg [6:0] shift = 7'b1000000;
    always @(posedge clk or posedge rst)
        if (rst) shift <= 7'b1000000;
        else shift <= {shift[5:0], shift[6] ^ shift[5]};
    assign out = shift[6];
endmodule

// Module definition for sipo.v
module sipo(input clk, input rst, input din, output [7:0] dout);
    reg [7:0] shift;
    always @(posedge clk or posedge rst)
        if (rst) shift <= 8'b0;
        else shift <= {shift[6:0], din};
    assign dout = shift;
endmodule

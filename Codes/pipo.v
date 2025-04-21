// Module definition for pipo.v
module pipo(input clk, input rst, input [7:0] din, output reg [7:0] dout);
    always @(posedge clk or posedge rst)
        if (rst) dout <= 8'b0;
        else dout <= din;
endmodule

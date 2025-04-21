// Module definition for piso.v
module piso(input clk, input rst, input load, input [7:0] din, output dout);
    reg [7:0] shift;
    always @(posedge clk or posedge rst)
        if (rst) shift <= 8'b0;
        else if (load) shift <= din;
        else shift <= {shift[6:0], 1'b0};
    assign dout = shift[7];
endmodule

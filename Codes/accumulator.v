// Module definition for accumulator.v
module accumulator(input clk, input rst, input [7:0] data_in, input load, output reg [7:0] acc);
    always @(posedge clk or posedge rst)
        if (rst) acc <= 0;
        else if (load) acc <= acc + data_in;
endmodule

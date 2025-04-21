// Module definition for universal_shift_reg.v
module universal_shift_reg(
    input clk, input rst, input [1:0] mode,
    input [7:0] din, input sin,
    output reg [7:0] dout);
    always @(posedge clk or posedge rst)
        if (rst) dout <= 0;
        else begin
            case(mode)
                2'b00: dout <= dout; // Hold
                2'b01: dout <= {dout[6:0], sin}; // Shift Left
                2'b10: dout <= {sin, dout[7:1]}; // Shift Right
                2'b11: dout <= din; // Parallel Load
            endcase
        end
endmodule

// Module definition for t_latch.v
module t_latch(input T, input EN, output reg Q);
    always @(EN or T) begin
        if (EN) begin
            if (T) Q <= ~Q;
        end
    end
endmodule

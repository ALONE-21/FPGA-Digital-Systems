// Module definition for jk_latch.v
module jk_latch(input J, input K, input EN, output reg Q);
    always @(EN or J or K) begin
        if (EN) begin
            if (~J & ~K) Q <= Q;
            else if (~J & K) Q <= 0;
            else if (J & ~K) Q <= 1;
            else Q <= ~Q;
        end
    end
endmodule

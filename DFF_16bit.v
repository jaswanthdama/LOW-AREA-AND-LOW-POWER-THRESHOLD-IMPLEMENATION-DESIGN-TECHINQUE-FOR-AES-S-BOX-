// 16-bit D Flip-Flop
module DFF_16bit (
    input wire clk,
    input wire rst,
    input wire [15:0] d,
    output reg [15:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 16'b0;
        else
            q <= d;
    end
endmodule

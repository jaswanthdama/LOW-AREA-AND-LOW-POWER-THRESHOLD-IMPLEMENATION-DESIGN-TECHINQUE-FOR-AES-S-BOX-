// D Latch for Synchronization
module D_Latch (
    input wire [15:0] d,
    input wire en,
    output reg [15:0] q
);
    always @(posedge en) begin
        q <= d;
    end
endmodule


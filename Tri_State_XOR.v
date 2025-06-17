// Tri-State XOR Gate
module Tri_State_XOR (
    input wire [15:0] a,
    input wire [15:0] b,
    input wire en,
    output wire [15:0] out
);
    assign out = en ? (a ^ b) : 16'bz;
endmodule


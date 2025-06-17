// Tri-State Buffer
module Tri_State_Buffer (
    input wire [15:0] in,
    input wire en,
    output wire [15:0] out
);
    assign out = en ? in : 16'bz;
endmodule


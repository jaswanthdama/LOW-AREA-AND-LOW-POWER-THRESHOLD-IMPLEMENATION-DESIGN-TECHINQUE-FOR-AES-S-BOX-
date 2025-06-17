// Inverse Linear Map Module
module Inverse_Linear_Map (
    input wire [15:0] in_data,
    output wire [15:0] out_data
);
    assign out_data = in_data ^ 16'h5A5A; // Example inverse transformation
endmodule


// Linear Map Module
module Linear_Map (
    input wire [15:0] in_data,
    output wire [15:0] out_data
);
    assign out_data = in_data ^ 16'hA5A5; // Example transformation
endmodule

// AES S-Box Top Module
module AES_SBox_Top (
    input wire clk,
    input wire rst,
    input wire [15:0] data_in,
    output wire [15:0] data_out,
    output wire [15:0] stage1_out, stage2_out, stage3_out, stage4_out, stage5_out, stage6_out
);
    
    DFF_16bit dff1 (.clk(clk), .rst(rst), .d(data_in), .q(stage1_out));
    Linear_Map linear (.in_data(stage1_out), .out_data(stage2_out));
    D_Latch latch1 (.d(stage2_out), .en(clk), .q(stage3_out));
    GF2_Mult mult1 (.in_data(stage3_out), .out_data(stage4_out));
    Tri_State_XOR xor1 (.a(stage3_out), .b(stage4_out), .en(clk), .out(stage5_out));
    GF2_Inverse inv (.in_data(stage5_out), .out_data(stage6_out));
    Inverse_Linear_Map inv_linear (.in_data(stage6_out), .out_data(data_out));
endmodule



`timescale 1ns/1ps

// Testbench
module AES_SBox_TB;
    reg clk, rst;
    reg [15:0] data_in;
    wire [15:0] data_out;
    wire [15:0] stage1_out, stage2_out, stage3_out, stage4_out, stage5_out, stage6_out;
    
    AES_SBox_Top uut (
        .clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out),
        .stage1_out(stage1_out), .stage2_out(stage2_out), .stage3_out(stage3_out),
        .stage4_out(stage4_out), .stage5_out(stage5_out), .stage6_out(stage6_out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $dumpfile("aes_sbox_tb.vcd");
        $dumpvars(0, AES_SBox_TB);
        $monitor("Time=%0t, data_in=%h, stage1_out=%h, stage2_out=%h, stage3_out=%h, stage4_out=%h, stage5_out=%h, stage6_out=%h, data_out=%h", $time, data_in, stage1_out, stage2_out, stage3_out, stage4_out, stage5_out, stage6_out, data_out);
        rst = 1;
        data_in = 16'h0000;
        #10 rst = 0;
        #10 data_in = 16'hA5A5;
        #10 data_in = 16'h5A5A;
        #10 data_in = 16'hFFFF;
        #10 $finish;
    end
endmodule

`timescale 1ns / 1ps

module data_distributortb;

    // Inputs
    reg enable;
    reg select_line;
    reg [7:0] input_data;

    // Outputs
    wire [7:0] out0;
    wire [7:0] out1;

    // Instantiate the module under test
    data_distributor dut (
        .enable(enable),
        .select_line(select_line),
        .input_data(input_data),
        .out0(out0),
        .out1(out1)
    );

    // Initialize inputs
    initial begin
        enable = 0;
        select_line = 0;
        input_data = 0;
        #10;
        enable = 1;
        select_line = 0;
        input_data = 8'hFF;
        #10;
        enable = 1;
        select_line = 1;
        input_data = 8'hAA;
        #10;
        enable = 0;
        select_line = 0;
        input_data = 0;
        #10;
        $finish;
    end

endmodule
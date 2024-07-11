module seven_segment_display_decodertb;

    reg [3:0] binary_input;
    wire [6:0] segment_output;

    seven_segment_display_decoder uut (
        .binary_input(binary_input),
        .segment_output(segment_output)
    );

    initial begin
        $dumpfile("seven_segment_display_decodertb.vcd");
        $dumpvars(0, seven_segment_display_decodertb);

        binary_input = 4'b0000;
        #10;
        
        binary_input = 4'b0001;
        #10;
        
        binary_input = 4'b0010;
        #10;
        
        binary_input = 4'b0011;
        #10;
        
        binary_input = 4'b0100;
        #10;
        
        binary_input = 4'b0101;
        #10;
        
        binary_input = 4'b0110;
        #10;
        
        binary_input = 4'b0111;
        #10;
        
        binary_input = 4'b1000;
        #10;
        
        binary_input = 4'b1001;
        #10;
        
        binary_input = 4'b1010; // Invalid input
        #10;
        
        $finish;
    end

endmodule
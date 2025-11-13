module gray_to_binary;

    reg  [3:0] gray;
    wire [3:0] binary;
    genvar i;

    // Generate loop for Gray to Binary conversion
    generate
        for (i = 0; i < 4; i = i + 1) begin : gen_gray2bin
            assign binary[3 - i] = ^(gray[3:3 - i]); 
            // XOR reduction of higher bits for each binary bit
        end
    endgenerate

    initial begin
        $monitor("Time=%0t Gray=%b -> Binary=%b", $time, gray, binary);

        gray = 4'b0000; #5;
        gray = 4'b0001; #5;
        gray = 4'b0011; #5;
        gray = 4'b0010; #5;
        gray = 4'b0110; #5;
        gray = 4'b0111; #5;
        gray = 4'b0101; #5;
        gray = 4'b0100; #5;
        gray = 4'b1100; #5;

        $finish;
    end

endmodule


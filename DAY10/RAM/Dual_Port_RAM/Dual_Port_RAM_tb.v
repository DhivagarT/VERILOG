`timescale 1ns/1ps

module dual_port_ram_tb;

    // Parameters
    parameter ADDR = 8;
    parameter DATA = 4;
    parameter DEPTH = 16;

    // Port A signals
    reg                   clk_a;
    reg                   we_a;
    reg  [ADDR-1:0]       addr_a;
    reg  [DATA-1:0]       data_in_a;
    wire [DATA-1:0]       data_out_a;

    // Port B signals
    reg                   clk_b;
    reg                   we_b;
    reg  [ADDR-1:0]       addr_b;
    reg  [DATA-1:0]       data_in_b;
    wire [DATA-1:0]       data_out_b;

    // DUT
    Dual_Port_RAM #(.ADDR(ADDR), .DATA(DATA), .DEPTH(DEPTH)) dut (
        .clk_a(clk_a), .we_a(we_a), .addr_a(addr_a), .data_in_a(data_in_a), .data_out_a(data_out_a),
        .clk_b(clk_b), .we_b(we_b), .addr_b(addr_b), .data_in_b(data_in_b), .data_out_b(data_out_b)
    );

    // Clock generation
    initial begin
        clk_a = 0;
        forever #5 clk_a = ~clk_a;  // 10ns period
    end

    initial begin
        clk_b = 0;
        forever #7 clk_b = ~clk_b;  // 14ns period (different clock)
    end


    initial begin
        // Waveform dump
        $dumpfile("dual_port_ram.vcd");
        $dumpvars(0, dual_port_ram_tb);

        // Initial values
        we_a = 0; addr_a = 0; data_in_a = 0;
        we_b = 0; addr_b = 0; data_in_b = 0;

        // --- Test PORT A Write ---
        @(posedge clk_a);
        we_a = 1; addr_a = 4; data_in_a = 4'hA;   // write A to address 4

        @(posedge clk_a);
        we_a = 0; addr_a = 4;                     // read A from address 4

        // --- Test PORT B Write ---
        @(posedge clk_b);
        we_b = 1; addr_b = 7; data_in_b = 4'hF;   // write F to address 7

        @(posedge clk_b);
        we_b = 0; addr_b = 7;                     // read F from address 7

        // --- Both ports writing to different addresses ---
        @(posedge clk_a);
        @(posedge clk_b);
        we_a = 1; addr_a = 2; data_in_a = 4'h5;
        we_b = 1; addr_b = 3; data_in_b = 4'hC;

        @(posedge clk_a);
        @(posedge clk_b);
        we_a = 0; addr_a = 2;    // read 5
        we_b = 0; addr_b = 3;    // read C

        // --- Same address conflict (write A, read B) ---
        @(posedge clk_a);
        @(posedge clk_b);
        we_a = 1; addr_a = 8; data_in_a = 4'h9;
        we_b = 0; addr_b = 8;    // reading while A writes

        // End simulation
        #100;
        $finish;
    end

endmodule



`timescale 1ns/1ps

module tb_single_port_ram;

  reg clk, we;
  reg [3:0] addr;
  reg [7:0] din;
  wire [7:0] dout;

  // DUT
  single_port_ram dut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns period
  end

  // Dumpfile
  initial begin
    $dumpfile("single_port_ram.vcd");
    $dumpvars(0, tb_single_port_ram);
  end

  // Test stimulus
  initial begin

    we = 0; addr = 0; din = 0;
    @(posedge clk);

    // Write operations
    we = 1;
    addr = 4; din = 8'hAA; @(posedge clk);
    addr = 7; din = 8'h55; @(posedge clk);
    addr = 2; din = 8'h33; @(posedge clk);

    // Read operations
    we = 0;
    addr = 4; @(posedge clk);
    addr = 7; @(posedge clk);
    addr = 2; @(posedge clk);

    #20;
    $finish;
  end

endmodule


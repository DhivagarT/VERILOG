module testbench();
  reg wr_clk,wr_reset_n,wr_enb;
  reg rd_clk,rd_reset_n,rd_enb;
  reg [7:0]wr_data_in;
  
  wire [7:0]rd_data_out;
  wire full;
  wire empty;
  
  
  check_1 dut(.wr_clk(wr_clk),
              .wr_reset_n(wr_reset_n),
              .wr_enb(wr_enb),
              .rd_clk(rd_clk),
              .rd_reset_n(rd_reset_n),
              .rd_enb(rd_enb),
              .wr_data_in(wr_data_in),
              .rd_data_out(rd_data_out),
              .full(full),
              .empty(empty));
  
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,testbench);
  end
  
  always #4 wr_clk=~wr_clk;
  always #6 rd_clk=~rd_clk;
  
  initial begin
    wr_clk=0;
    wr_reset_n=0;
    wr_enb=0;
    rd_clk=0;
    rd_reset_n=0;
    rd_enb=0;
    #6;
    wr_reset_n=1;
    rd_reset_n=1;
  end
  
  initial begin
    #8;
    wr_enb=1;
    wr_data_in=8'h13;
    @(posedge wr_clk);
    rd_enb=0;
    #2;
    rd_enb=1;
    @(posedge rd_clk);
    #10;
    $finish;
//     rd_enb=1;
  end
  
  initial begin
    $monitor("wr_clk=%d rd_clk=%d wr_reset=%d rd_reset=%d wr_enb=%d rd_enb=%d wr_data=%d rd_data=%d full=%d empty=%d",wr_clk,rd_clk,wr_reset_n,rd_reset_n,wr_enb,rd_enb,wr_data_in,rd_data_out,full,empty);
  end
endmodule
    
    
    
  

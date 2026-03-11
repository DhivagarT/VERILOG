//asynchronous fifo 
module check_1#(parameter DEPTH=8)(input wr_clk,wr_reset_n,wr_enb,
                                   input [7:0]wr_data_in,
               input rd_clk,rd_reset_n,rd_enb,
               output reg [7:0]rd_data_out,
               output full,
               output empty);
  
  
  reg [7:0]mem[0:DEPTH-1];
  parameter lnt=$clog2(DEPTH);
  
  reg[lnt:0]wr_pntr;
  reg [lnt:0]rd_pntr;
 
  //2 flip-flop synchronizer
  reg [lnt:0]wr_pntr_1;   
  reg [lnt:0]wr_pntr_2;
  reg [lnt:0]rd_pntr_1;
  reg [lnt:0]rd_pntr_2;
 
  //gray pointer
  wire [lnt:0]g_wr_pntr;
  wire [lnt:0]g_rd_pntr;
  
  //write condition
  always@(posedge wr_clk or negedge wr_reset_n)begin
    if(!wr_reset_n)
      wr_pntr <= 0;
    else if(wr_enb&&!full)begin
      mem[wr_pntr[lnt-1:0]] <= wr_data_in;
      wr_pntr <= wr_pntr+1'b1;
    end
  end
  
  //read condition
  always@(posedge rd_clk or negedge rd_reset_n)begin
    if(!rd_reset_n)
      rd_pntr <= 0;
    else if(rd_enb&&!empty)begin
      rd_data_out <= mem[rd_pntr[lnt-1:0]];
      rd_pntr <= rd_pntr+1'b1;
    end
  end
  
      
  //gray conversion representation
  assign g_wr_pntr = (wr_pntr>>1)^wr_pntr;
  assign g_rd_pntr = (rd_pntr>>1)^rd_pntr;
    
  //empty declaration to write side clk  
  always@(posedge wr_clk or negedge wr_reset_n)begin
    if(!wr_reset_n)
    {rd_pntr_1,rd_pntr_2} <= 0;
    else 
    {rd_pntr_1,rd_pntr_2} <= {rd_pntr_2,g_rd_pntr};
  end
  
  //full declaration to thr read side clk
  always@(posedge rd_clk or negedge rd_reset_n)begin
    if(!rd_reset_n)
    {wr_pntr_1,wr_pntr_2} <= 0;
    else
    {wr_pntr_1,wr_pntr_2} <= {wr_pntr_2,g_wr_pntr};
  end
  
  //full,empty declaration
  assign empty = (g_wr_pntr==rd_pntr_2);
 assign full = (g_wr_pntr == {~wr_pntr_2[lnt:lnt-1], wr_pntr_2[lnt-2:0]});
endmodule
    
      

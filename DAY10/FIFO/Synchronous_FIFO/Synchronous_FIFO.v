module Synchronous_FIFO #(
parameter DATA=8,
parameter DEPTH=8)
(
input clk,rst,
input we_enb,
input re_enb,
input [DATA-1:0]data_in,
output reg [DATA-1:0]data_out,
output full,empty);

reg [DATA-1:0]mem[0:DEPTH-1];
reg [$clog2(DEPTH)-1:0]we_pntr=0;
reg [$clog2(DEPTH)-1:0]re_pntr=0;
reg count=0;

always@(posedge clk)begin
	if(rst)begin
		we_pntr<=0;
		re_pntr<=0;
		data_out<=0;
		count<=0;
	end else begin
		if(we_enb&&!full)begin
			mem[we_pntr]<=data_in;
			we_pntr<=we_pntr+1;
			count<=count+1;
		end
		if(re_enb&&!empty)begin
			data_out<=mem[re_pntr];
			re_pntr<=re_pntr+1;
			count<=count-1;
		end
	end
end

assign full=(count==DEPTH);
assign empty=(count==0);
endmodule



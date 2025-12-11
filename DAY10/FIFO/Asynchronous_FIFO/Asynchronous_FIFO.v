module Asynchronous_FIFO.v #(
parameter DATA=8,
parameter DEPTH=4)
(input we_clk,
input re_clk,
input rst,
input we_enb,
input re_enb,
input [DATA-1:0]data_in,
output [DATA-1:0]data_out,
output full,
output empty);

reg [DATA-1:0]mem[0:2**DEPTH-1];
reg [DEPTH-1:0] we_pntr=0,
reg [DEPTH-1:0]	re_pntr=0;
reg [DEPTH-1:0]count=0;


always@(posedge we_clk or negedge rst )begin
	if(!rst)begin
		we_pntr<=0;
		re_pntr<=0;
		data_out<=0;
		count=0;
	end else begin
		if(we_pntr&&!full)begin
			mem[we_pntr]<=data_in;
			we_pntr<=we_pntr+1;
			count<=count+1;
		end
		if(re_pntr&&!empty)begin
			data_out<=mem[re_pntr];
			re_pntr<=re_pntr+1;
			count<=count-1;
		end
	end
end

assign full=(count==2**DEPTH);
assign empty=(count==0);
endmodulecount==0
     

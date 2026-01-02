module Dual_Port_RAM #(
parameter DATA=4,
parameter ADDR=$clog2(DEPTH),
parameter DEPTH=16)
//port A
(input clk_a,
 input	we_a,
 input [ADDR-1:0]addr_a,
 input [DATA-1:0]data_in_a,
 output reg [DATA-1:0]data_out_a,

//port B
 input clk_b,
 input	we_b,
 input [ADDR-1:0]addr_b,
 input [DATA-1:0]data_in_b,
 output reg [DATA-1:0]data_out_b
);

reg [DATA-1:0]mem[0:DEPTH-1];
always@(posedge clk_a)begin
	if(we_a) 
		mem[addr_a]<=data_in_a;
        data_out_a<=mem[addr_a];
	
end

always@(posedge clk_b)begin
	if(we_b)begin
		mem[addr_b]<=data_in_b;
	end
	else begin
		data_out_b<=mem[addr_b];
	end
end

endmodule
	



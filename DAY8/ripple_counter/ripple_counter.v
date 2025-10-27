module ripple_counter(input [3:0]d,clk,rst,output q);
always@(posedge clk or negedge rst)begin

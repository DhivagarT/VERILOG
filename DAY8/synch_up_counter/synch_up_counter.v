module synch_up_counter(input [3:0]d,input clk,rst,output reg [3:0]q);

always@(posedge clk or negedge rst)begin
	if(!rst)
		q<=4'b0000;
	else
		q<= q+1;
end
endmodule



module synch_updown_counter(input [3:0]d,input clk,rst,enb,up_down,output reg [3:0]q);

always@(posedge clk or negedge rst)begin
	if(!rst)
		q<=4'b0000;
	else if(enb)
	 if(up_down)
		q<= q+1;
	 else
		q<= q-1;
end
endmodule

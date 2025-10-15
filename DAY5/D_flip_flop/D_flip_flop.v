module D_flip_flop(input d,clk,rst_n,output reg q1);

always@(posedge  clk or negedge rst_n)begin
	if(!rst_n)
		q1<=0;
	else
		q1<=d;
end
endmodule



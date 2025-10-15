module T_flip_flop(input t,clk,rst_n,output reg q);

always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		q<=0;
	else if(t)
		q<=~q;
	else
		q=q;
end
endmodule

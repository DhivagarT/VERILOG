module mod_10_counter(input clk,rst,output reg [3:0]q);
always@(posedge clk or posedge rst)begin
	if(rst)
		q<=4'b0000;
	else if(q==4'b1011)
		q<=4'bxxxx;
	else if(q!==4'bxxxx)
		q<=q+1;
end
endmodule




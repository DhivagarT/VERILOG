module mod_5_ripple_counter(input clk,rst,output reg [2:0]q);

always@(posedge clk or posedge rst)begin
	if(rst)
		q<=3'b000;
	else if(q==3'b101)
		q<=3'bxxx;
	else if(q!==3'b101)
		q<=q+1;
end
endmodule





module mod_20_counter(input clk,rst,output reg [4:0]q);
always@(posedge clk or posedge rst)begin
	if(rst)
		q<=5'd0;
        else if(q==5'd19)
		q<=5'd0;
	else 
		q<=q+1;
end
endmodule



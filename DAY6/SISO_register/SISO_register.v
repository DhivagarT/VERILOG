module SISO_register(input clk,rst,d3,output q0);

 reg [3:0]shift_reg;
always@(posedge clk or negedge rst)begin
	if(rst)
	shift_reg <= 4'b0000;

	else 
	shift_reg <= {shift_reg[2:0] ,d3};
end
assign q0 = shift_reg[3];
endmodule


			


module SIPO_register(input clk,rst,d3,output q3,q2,q1,q0);
reg [3:0]shift_reg;


always@(posedge clk or negedge rst)begin
	if(!rst)
		shift_reg <= 4'b0000;
	else 
		shift_reg <= {shift_reg, d3};
end
assign q3 = shift_reg[0];
assign q2 = shift_reg[1];
assign q1 = shift_reg[2];
assign q0 = shift_reg[3];
endmodule	

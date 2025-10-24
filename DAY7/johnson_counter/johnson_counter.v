module johnson_counter(input d,clk,rst,output reg [3:0]qbar);

always@(posedge clk or negedge rst)begin
	if(!rst)
		qbar<= 4'b0001;
	else
		qbar<={qbar[2:0],~qbar[3]};
end
endmodule


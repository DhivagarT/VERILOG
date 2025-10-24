module ring_counter(input d,clk,rst,output reg [3:0]q);

always@(posedge clk or negedge rst)begin
	if(!rst)
		q <= 4'b0001;
		else
			q <= {q[2:0],q[3]};
	end
	endmodule


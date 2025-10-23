module universal_shiftreg(input [1:0]s,input sR,sL,input [3:0]d,input clk,clr,output  reg [3:0]q);

always@(posedge clk or negedge clr)begin
	if(clr)
		q <= 4'b0000;
	else
		case(s)
			
			2'b01: q <= {sR,q[3:1]};
			2'b10: q <= {q[2:0],sL};
			2'b11: q <= d;
			default: q <= q;
		endcase
	end
	endmodule



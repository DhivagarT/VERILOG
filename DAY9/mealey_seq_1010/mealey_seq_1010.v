//NON-OVERLAPPING

module mealey_seq_1010(input clk,rst,in,output out);

localparam [1:0] A=0,B=1,C=2,D=3;
reg [2:0]state,next;

always@(posedge clk)
	if(rst)
		state<=0;
	else
		state<=next;

	always@(*)begin
		case(state)
			A:next=in?B:A;
			B:next=in?B:C;
			C:next=in?D:A;
			D:next=A;
			default:next=A;
		endcase
	end

	assign out= (state==D)&&(~in);
endmodule

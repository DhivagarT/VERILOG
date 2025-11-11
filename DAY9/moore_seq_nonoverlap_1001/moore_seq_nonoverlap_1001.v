//Non overlap
//Asynchronous Reset

module moore_seq_nonoverlap_1001(input clk,rst_n,in,output reg out);
localparam [2:0]A=0,B=1,C=2,D=3,E=4;
reg [3:0]state,next;

always@(posedge clk or posedge rst_n)
	if(!rst_n)
		state<=A;
	else
		state<=next;


	always@(*)begin
	case(state)
		A:begin
	        	next=in?B:A;
                	out=0;
	end
		B:begin
			next=in?B:C;
			out=0;
		end
		C:begin
			next=in?B:D;
			out=0;
		end
		D:begin
			next=in?E:A;
			out=0;
		end
		E:begin
			next=A;
			out=1;
		end
		default:next=A;
	endcase
end
endmodule

		

module ALU_1_bit(input a,b,input [1:0]s,output reg y);
always@(*)begin
	case(s)
		0:y=a+b;
		1:y=a-b;
		2:y=a*b;
		default:y=2'dx;
	endcase
end
endmodule

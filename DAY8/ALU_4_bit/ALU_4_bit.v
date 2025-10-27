module ALU_4_bit(input [3:0]a,b,input [3:0]s,output reg [3:0]y);

always@(*)begin
	case(s)
		4'h0:y= a + b;
		4'h1:y= a - b;
		4'h2:y= a * b;
		4'h3:y= a / b;
		4'h4:y= a % b;
		4'h5:y= a & b;
		4'h6:y= a | b;
		4'h7:y= a ^ b;
		4'h8:y= ~ a;
		4'h9:y= ~ b;
	        4'hA:y= a ~^ b;
		4'hB:y= a && b;
		4'hC:y= a || b;
		4'hD:y= a == b;
		4'hE:y= a != b;
		default:y=4'd0;
	endcase
end
endmodule

		


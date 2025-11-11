module eight_to_one_mux(input [7:0]a,input [2:0]s,output reg out);
reg b,c;

always@(*)begin
	case(s[1:0])
		2'b00:b=a[0];
		2'b01:b=a[1];
		2'b10:b=a[2];
		2'b11:b=a[3];
	endcase
end

always@(*)begin
	case(s[1:0])
		2'b00:c=a[4];
		2'b01:c=a[5];
		2'b10:c=a[6];
		2'b11:c=a[7];
	endcase
end

always@(*)begin
	case(s[2])
		1'b0:out=b;
		1'b1:out=c;
	endcase
end

endmodule


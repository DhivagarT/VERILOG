module SR_latch(input s,r,enb,output reg q);
always@(*)begin
	if(!enb)begin
		q=0;
	end
		else case({s,r})
			2'b00: q=q;
			2'b01: q=0;
			2'b10: q=1;
			2'b11: q=2'bx;
		endcase
	end
endmodule



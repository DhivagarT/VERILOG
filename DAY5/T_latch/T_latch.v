module T_latch(input t,enb,output reg q);

always@(*)begin
	if(enb)begin
		q = ~t;
	end
	else begin
		q = q;
	end
end
endmodule


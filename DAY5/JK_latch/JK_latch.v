module JK_latch(input j,k,enb,output reg q);
always@(*)begin
        if(!enb)begin
                q=0;
        end
                else case({j,k})
                        2'b00: q=q;
                        2'b01: q=0;
                        2'b10: q=1;
                        2'b11: q=~q;
                endcase
        end
endmodule

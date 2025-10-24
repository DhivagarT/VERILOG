module asynch_updown_counter(input [3:0]d,input clk,rst,enb,output reg [3:0]q);
always@(negedge rst or posedge clk )begin
	if(!rst)
		q<=4'b0000;

        else if(enb)
		      q<=q+1;
  	else 
                      q<=q-1;
        
     end
     endmodule

                


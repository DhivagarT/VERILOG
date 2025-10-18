module PISO_register(input clk,rst,d3,d2,d1,d0,output q0);

reg [3:0]shift_reg;

always@(posedge clk or negedge rst)begin

if(rst)
shift_reg <= 4'b0000;
else
shift_reg <= {d3,d2,d1,d0};

end

 assign q0 = shift_reg;

endmodule

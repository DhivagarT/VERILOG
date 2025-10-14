module four_bit_add_sub(input [3:0]a,input [3:0]b,input mode,output reg[3:0]x,output reg cout);

reg [4:0]temp;

always@(*)begin
if(mode==0)
temp= a + b ;
else begin 
temp=a + (~b+1);
end 
x=temp[3:0];
cout=temp[4];
end 
endmodule

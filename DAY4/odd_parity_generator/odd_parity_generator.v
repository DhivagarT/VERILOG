module odd_parity_generator(input a,b,c,output reg g);

always@(a or b or c)begin

  g= a ^ b ^ c;
  
end
endmodule

module even_parity_generator(input a,b,c,output reg g);

always@(*)begin
  g= ~a ^ ~b ^ ~c;
end
endmodule


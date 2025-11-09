module top_module (input x, input y, output z);
    assign z=(x^y)&x;
endmodule
module A(input x,y,output z);
    top_module dut(x,y,z);
    assign z=(x^y)&x;


endmodule

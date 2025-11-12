module race_free;
    reg a, b, c;

    initial begin
        a = 1;
        b = 0;
        c = 0;

        b <= a;      // instead of b=a
        a <= b;       // instead of a=b

        #1;          
        $display("a=%0d b=%0d c=%0d", a, b, c);
    end
endmodule


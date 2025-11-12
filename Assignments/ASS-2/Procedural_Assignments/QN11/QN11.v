module compare;
    reg a, b, c;

    initial begin
        a = 0; b = 1;

        // Blocking assign sequentially
        c = a;
        a = b;
        $display("Blocking: a=%0d c=%0d", a, c);

        // Non-blocking assign parallel, here from the previous
	// display a=1;b=1;
	 
        c <= a;
        a <= b;
        #1 $display("Non-blocking: a=%0d c=%0d", a, c);
    end
endmodule

     

              

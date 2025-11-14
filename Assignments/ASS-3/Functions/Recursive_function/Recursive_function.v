module factorial_function;

    integer num;

    function integer factorial;
        input integer n;
        integer i;
        begin
            factorial = 1;
            for (i = 1; i <= n; i = i + 1)
                factorial = factorial * i;
        end
    endfunction

    initial begin
        num = 5;
        $display("Factorial of %0d = %0d", num, factorial(num));
        #10;
        $finish;
    end

endmodule
	

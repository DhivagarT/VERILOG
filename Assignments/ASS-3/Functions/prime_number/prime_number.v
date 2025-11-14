module prime_function;

    integer num;

    function integer is_prime;
        input integer n;
        integer i;
        begin
            if (n <= 1) begin
                is_prime = 0;
            end else begin
                is_prime = 1; 
                for (i = 2; i <= n/2; i = i + 1) begin
                    if (n % i == 0)
                        is_prime = 0;
                end
            end
        end
    endfunction

    initial begin
        num = 7;  
        $display("Number = %0d, IsPrime = %0d", num, is_prime(num));
        #10;
        $finish;
    end

endmodule

	

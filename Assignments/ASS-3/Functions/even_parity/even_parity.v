module even_parity_function;
    reg [7:0] data;
    reg parity;

    function parity_even;
        input [7:0] x;
        begin
            parity_even = ~(^x);
        end
    endfunction

    initial begin
        data = $urandom % 256;
        parity = parity_even(data);
        $display("Data = %0b, Even Parity = %0b", data, parity);
        #10;
        $finish;
    end
endmodule



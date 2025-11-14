module trailing_zeros;
    reg [7:0] a;
    reg [3:0] r;

    function [3:0] count_tz;
        input [7:0] x;
        integer i;
        begin
            count_tz = 0;
            for (i = 0; i < 8; i = i + 1) begin
                if (x[i] == 1)
                      i = 8;  
                else
                    count_tz = count_tz + 1;
            end
        end
    endfunction

    initial begin
        a = 8'b00101000;
        r = count_tz(a);
        $display("a=%b trailing_zeros=%0d", a, r);
        #10;
        $finish;
    end
endmodule


module countdown_while;
    integer count;

    initial begin
        count = 10;

        while (count >= 0) begin
            $display("Count = %0d", count);
            count = count - 1;
        end

        $finish;
    end
endmodule


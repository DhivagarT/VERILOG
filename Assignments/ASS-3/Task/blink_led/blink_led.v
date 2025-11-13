module blink_led;
    reg led;

    task blink;
        input [31:0] delay_time;
        begin
            led = ~led;
            #delay_time;
        end
    endtask

    initial begin
        led = 0;
        repeat (5) begin
            blink(5);
            $display("Time=%0t LED=%0d", $time, led);
        end
        $finish;
    end
endmodule


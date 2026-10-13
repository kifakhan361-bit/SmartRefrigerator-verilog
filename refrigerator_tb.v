
`timescale 1ns/1ps

module refrigerator_tb;

reg door_open;
reg high_temp;
reg door_long;
wire alarm;

refrigerator dut (
    .door_open(door_open),
    .high_temp(high_temp),
    .door_long(door_long),
    .alarm(alarm)
);

integer d, t, l;

initial begin
    $display("D T L | Alarm");
    $display("--------------");

    for (d = 0; d < 2; d = d + 1) begin
        for (t = 0; t < 2; t = t + 1) begin
            for (l = 0; l < 2; l = l + 1) begin
                door_open = d;
                high_temp = t;
                door_long = l;
                #10;

                $display("%0d %0d %0d |   %0d",
                         d, t, l, alarm);
            end
        end
    end

    $finish;
end

initial begin
    $dumpfile("refrigerator.vcd");
    $dumpvars(0, refrigerator_tb);
end

endmodule

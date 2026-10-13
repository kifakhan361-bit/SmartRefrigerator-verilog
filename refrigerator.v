
module refrigerator (
    input wire door_open,
    input wire high_temp,
    input wire door_long,
    output wire alarm
);

assign alarm = high_temp | (door_open & door_long);

endmodule

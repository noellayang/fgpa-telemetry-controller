
module timer_tb(
    reg clk,
    reg reset,
    wire sample_tick;
);

timer uut(
    .clk(clk),
    .reset(reset),
    .sample_tick(sample_tick);
)

initial begin
    clk = 0;
end

always begin
    #5 clk = ~clk;
end

initial begin
    reset = 1;

    #12;
    reset = 0;
end

initial begin
    $dumpfile("timer.vcd");
    $dumpvars(0, timer_tb);
end

endmodule


module timer #(
    parameter clocks_per_sample = 5
)(
    input clk,
    input reset,
    output reg sample_tick
);

reg [2:0] counter;
    
always@(posedge clk) begin
    
    if (reset) begin
        sample_tick <= 0;
        counter <= 0;
    end

    else if (counter == clocks_per_sample - 1) begin
        sample_tick <= 1;
        counter <= 0;
    end
    
    else begin
        sample_tick <= 0;
        counter <= counter + 1;
    end 


end
 
endmodule
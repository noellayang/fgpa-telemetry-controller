module timer(
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

    else if (counter == 4) begin
        sample_tick <= 1;
        counter <= 0;
    end
    
    else begin
        sample_tick <= 0;
        counter <= counter + 1;
    end 


end
 
endmodule
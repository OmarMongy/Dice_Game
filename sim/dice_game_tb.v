module dice_game_tb ();
reg clk, reset_n, ena;
wire [2:0] dice;

dice_game uut (
    .clk(clk),
    .reset_n(reset_n),
    .ena(ena),
    .dice(dice)
);
localparam T = 10;
always 
begin
    clk = 1'b0;
    #T
    clk = 1'b1;
    #T;
end
initial 
begin
    reset_n = 1'b0;
    #(2*T)
    reset_n = 1'b1;
    ena = 1'b1;
    #(50*T)
    $stop;
end
endmodule

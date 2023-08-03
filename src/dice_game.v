module dice_game (
input clk, reset_n, ena,
output [2:0] dice
);
localparam s0 = 0, s1 = 1 ,s2 = 2, s3 = 3,
            s4 = 4, s5 = 5, s6 = 6, s7 = 7;
reg [2:0] state_reg, state_next;

always @(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        state_reg <= s1;
        else
        state_reg <= state_next;
end

always @(*)
begin
    if (ena)
        case (state_reg)
        s1 : state_next = s6;
        s2 : state_next = s1;
        s3 : state_next = s5;
        s4 : state_next = s2;
        s5 : state_next = s4;
        s6 : state_next = s3;
        default : state_next = state_reg;        
        endcase
        else 
        state_next = state_reg; 
end
assign dice = state_reg;
endmodule

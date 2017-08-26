module Energy_saver1 (input clk1hz, input M_EN1,input [3:0] OUT1, output reg [3:0] OUT_final1);


always @(*) begin
if(M_EN1==1)begin
OUT_final1=OUT1;
end else OUT_final1=4'b0000;
end
endmodule
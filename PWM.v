module PWM(
    input clk50M,
    input [15:0]byte_data_received,
    output PWM_out,
	 output PWM_out2, //добавляем второй канал
	 output PWM_out_vent, //добавляем десятый канал вентиляции вытяжки
	 input byte_received // флаг принятия байта по спи
	 	 );

reg [7:0] buffer1;
reg [7:0] buffer2;
reg [7:0] buffer3;
reg [7:0] cnt;
reg [7:0] packet_adr;



always @(posedge clk50M) begin 
cnt <= cnt + 1'b1;  // free-running counter
if (byte_received) begin
case (byte_data_received[15:8])
	  8'b00000011: buffer3 <= byte_data_received[7:0];
	  8'b00000010: buffer2 <= byte_data_received[7:0];
	  8'b00000001: buffer1 <= byte_data_received[7:0];
	  endcase
end
			

end
//первые три канала работают по 1 пакету 
assign PWM_out = ((buffer1)>cnt);  // comparator
assign PWM_out2 = ((buffer2)>cnt); //добавляем второй канал
assign PWM_out_vent = ((buffer3)>cnt);

endmodule

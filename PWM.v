module PWM(
    input clk25M,
    input [15:0]byte_data_received,
    output PWM_out,
	 output PWM_out2, //добавляем второй канал
	 output PWM_out3, //добавляем третий канал
    output PWM_out4, //добавляем четвертый канал
	 output PWM_out5, //добавляем пятый канал
	 output PWM_out6, //добавляем шестой канал
	 output PWM_out7, //добавляем седьмой канал
	 output PWM_out8, //добавляем восьмой канал
	 output PWM_out9, //добавляем девятый канал
	 output PWM_out_vent, //добавляем десятый канал вентиляции вытяжки
	 input byte_received
	 	 );

reg [7:0] buffer;
reg [7:0] buffer2;
reg [7:0] buffer3;
reg [7:0] cnt;
reg [7:0] packet_adr;



always @(posedge clk25M) begin 
cnt <= cnt + 1'b1;  // free-running counter
if (byte_received) begin
packet_adr<=(byte_data_received[15:8]);
case (packet_adr)
	  8'b00000011: buffer <= byte_data_received[7:0];
	  8'b00000010: buffer2 <= byte_data_received[7:0];
	  8'b00000001: buffer3 <= byte_data_received[7:0];
	  endcase
end
			

//PWM_Chanel=byte_data_received[15:8]; //зависит от температуры первого канала
//PWM_Chanel=byte_data_received[7:0];
end
//первые три канала работают по 1 пакету 
assign PWM_out = ((buffer3)>cnt);  // comparator
assign PWM_out2 = ((buffer2)>cnt); //добавляем второй канал
//assign PWM_out3 = ((byte_data_received[31:24])>cnt); //добавляем третий канал
//вторые три канала работают по 2 пакету
//assign PWM_out4 = ((byte_data_received[39:32])>cnt); //добавляем четвертый канал
//assign PWM_out5 = ((byte_data_received[47:40])>cnt); //добавляем пятый канал
//assign PWM_out6 = ((byte_data_received[55:48])>cnt); //добавляем шестой канал

//assign PWM_out7 = ((byte_data_received[63:56])>cnt); //добавляем седьмой канал
//assign PWM_out8 = ((byte_data_received[71:64])>cnt); //добавляем восьмой канал
//assign PWM_out9 = ((byte_data_received[79:72])>cnt); //добавляем девятый канал
assign PWM_out_vent = ((buffer)>cnt);

endmodule

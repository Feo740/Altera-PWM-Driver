module  SETPOS1 (input key1,input key2, input clk50M,input clk1hz,output reg M_EN1,output reg DIR1,input [15:0] byte_data_received,input byte_received);

reg dev_state; // 0- это init 1- это работа по установке угла
reg [10:0] angle_target; //целевой
reg [10:0] angle_current; //текущий
reg [7:0] buffer4;

initial begin
	dev_state=1'b0;
	angle_current=0;
	angle_target=0;
	buffer4=0;
end


// Для примера, полностью открыта - это примерно 2100, 2200
//assign out_byte_received=byte_received;
always  @(posedge clk50M)
begin
if (byte_received) begin
	if(byte_data_received[15:8]== 8'b00000101) begin // проверяем признак принятого по спи байта код пакета крана - 5
	buffer4 <= byte_data_received[7:0]; 
end
   end
angle_target=buffer4 << 3;
	end


always  @(posedge clk1hz)
begin	
   if (dev_state == 1'b0)
   begin
       if (key1==0 | key2==0)
        begin
				dev_state=1'b1;
            M_EN1=0;
        end else begin
		             DIR1=1;
            M_EN1=1;
        end
   end else begin
//angle_target=byte_data_received*8;	
	if(angle_current<angle_target)
     begin
       DIR1=0;
       M_EN1=1;
       angle_current=angle_current+1'b1;
	end else if(angle_current>angle_target)
		begin
			DIR1=1;
			M_EN1=1;
			angle_current=angle_current-1'b1;
		end else if(angle_current==angle_target)
		begin
            M_EN1=0;
       	end
	end
	end


	

endmodule
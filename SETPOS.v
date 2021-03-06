module  SETPOS (input key0,input clk50M,input clk1hz,output reg M_EN,output reg DIR,input [15:0] byte_data_received,input byte_received);

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
	if(byte_data_received[15:8]== 8'b00000100) begin // проверяем признак принятого по спи байта
	buffer4 <= byte_data_received[7:0]; 
end
   end
angle_target=buffer4 << 3;
	end


always  @(posedge clk1hz)
begin	
   if (dev_state == 1'b0)
   begin
       if (key0==0)
        begin
				dev_state=1'b1;
            M_EN=0;
        end else begin
		             DIR=1;
            M_EN=1;
        end
   end else begin
//angle_target=byte_data_received*8;	
	if(angle_current<angle_target)
     begin
       DIR=0;
       M_EN=1;
       angle_current=angle_current+1'b1;
	end else if(angle_current>angle_target)
		begin
			DIR=1;
			M_EN=1;
			angle_current=angle_current-1'b1;
		end else if(angle_current==angle_target)
		begin
            M_EN=0;
       	end
	end
	end


	

endmodule
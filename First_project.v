module First_project(input wire key0, //концевик закрытой заслонки
							input wire key1, //концевик открытого крана
							input wire key2, //концевик закрытого крана
                     input wire clk50M,
							output reg led0,
                     output reg led1,
	  		            input wire SCK, 
			            input wire MOSI,
			            output wire MISO,
			            input wire SSEL,
                     output wire [3:0]OUT_final, //сигнал движения заслонки
							output wire [3:0]OUT_final1, //сигнал движения крана
							output wire PWM_out,
							output wire PWM_out2, //добавляем второй канал
							output wire PWM_out_vent, //добавляем десятый канал вентиляции вытяжки
							inout wire Data_H,
							output wire flag_five_sec,
							output wire Data_H_test,
							//output wire test_word_received,
							output wire byte_received
							     );
	  wire [39:0]HYM2;
	  wire LED;
	  wire [15:0]byte_data_received;
	  SPI_slave SPI_MODULE(clk50M, SCK, MOSI, MISO, SSEL, byte_data_received,HYM2,byte_received);
	  wire clk1hz,clk25M,clk1M;
	  frqdiv       FGD(clk50M,clk1hz,clk25M,clk1M); // важна последовательность объявления экземпляров?
	  wire M_EN,DIR, STEP;
	  wire M_EN1,DIR1, STEP1;
	  SETPOS        STPS(key0,clk50M,clk1hz,M_EN,DIR,byte_data_received,byte_received); // для заслонки
	  SETPOS1       STPS1(key1,key2,clk50M,clk1hz,M_EN1,DIR1,byte_data_received,byte_received); // для крана
	  RELAY         RL(clk1hz,M_EN,STEP); //для заслонки
	  RELAY1        RL1(clk1hz,M_EN1,STEP1); //для крана
	  wire [3:0] STEP_OUT;
	  wire [3:0] STEP_OUT1;
	  stepdirdriver SDRV(STEP, DIR, STEP_OUT);
	  stepdirdriver1 SDRV1(STEP1, DIR1, STEP_OUT1);
	  Energy_saver  E_s(clk1hz,M_EN,STEP_OUT,OUT_final); 
	  Energy_saver1  E_s1(clk1hz,M_EN1,STEP_OUT1,OUT_final1); 
	  PWM           p_w_m(clk50M,byte_data_received,PWM_out,PWM_out2,PWM_out_vent,byte_received); 
	  Humidity      Hum(clk1M,Data_H,flag_five_sec,HYM2,Data_H_test);
	  five_sec      F_S(clk1M,flag_five_sec);
	  
	  
always @(key0) begin
			led0 = key0;
	     	end 

		always @(clk1hz) begin
			led1 = clk1hz;
	     	end 	

endmodule
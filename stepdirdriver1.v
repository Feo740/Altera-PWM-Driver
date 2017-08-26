module stepdirdriver1 (input STEP1, input DIR1,output reg [3:0] OUT1);
reg [3:0] state1;
initial
begin
	state1=0;
end

always@(posedge STEP1) begin
	if (DIR1==1) begin
		state1=state1+1'b1;
	end else if (DIR1==0) begin
		state1=state1-1'b1;
	end

	case (state1)
	  0: OUT1=4'b1000;
	  1: OUT1=4'b1100;
	  2: OUT1=4'b0100;
	  3: OUT1=4'b0110;
	  4: OUT1=4'b0010;
	  5: OUT1=4'b0011;
	  6: OUT1=4'b0001;
	  7: OUT1=4'b1001;
   endcase
end
		  
endmodule

بmodule AR_Control(Load, CLR, INR, T, D, R, I);	
	input R, I;
	input [7:0] T, D;
	output Load, CLR, INR;
	
	wire D7n, Rn;
	wire a1, a2, a3;  
	
	assign D7n= ~D[7];	
	assign Rn= ~R;
	
	
	assign a1= D7n & I & T[3];
	assign a2= T[2] & Rn;
	assign a3= Rn & T[0];
	assign CLR= T[0] & R;
	assign INR= D[5] & T[4];
	assign Load= a1 | a2 | a3;
	
endmodule

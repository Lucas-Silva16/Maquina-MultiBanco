`timescale 1ns / 1ps

module ComparadorPinCod(
    
	 
    input [3:0] pin,           
    input [4:0] cod,            
    input en,                  
    output reg pin_corret       
);


    always @(*) begin
        if (!en) begin                   
            if (pin == cod[3:0])        
                pin_corret = 1;
            else
                pin_corret = 0;
					 
            end else begin
					pin_corret = 1; 
         end
      end
endmodule

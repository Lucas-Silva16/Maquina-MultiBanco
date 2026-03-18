`timescale 1ns / 1ps

module Ecra(
    input en,                          
    input pin_corret,                  
    input saldo_suficiente,            
    input [7:0] novo_saldo,            
    output reg [7:0] ecra             
);

    always @(*) begin
        if (en == 0 && pin_corret && saldo_suficiente) begin
            ecra = novo_saldo;       
                
			end else begin
            ecra = 8'b00000000;       
                            
        end
    end

endmodule
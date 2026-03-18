// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module Multibanco;
  
    reg en;
    reg [3:0] pin;
    reg [4:0] cod;
    reg [7:0] saldo;
    reg [3:0] valor_debito;
    reg PAR;  
	 
    wire [7:0] ecra;
    wire pin_corret;
    wire saldo_suficiente;
    wire [7:0] novo_saldo;
	 
	 
    ComparadorPinCod u_comparadorPinCod (
        .pin(pin),
        .cod(cod),
        .en(en),
        .pin_corret(pin_corret)
    );
	 
    SomadorSub u_somadorSub (
        .en(en),
        .saldo(saldo),
        .valor_debito(valor_debito),
        .pin_corret(pin_corret),
        .saldo_suficiente(saldo_suficiente),
        .novo_saldo(novo_saldo)
    );
	 
    VerificadorDeSaldo u_verificadorDeSaldo (
        .saldo(saldo),
        .valor_debito(valor_debito),
        .saldo_suficiente(saldo_suficiente)
    );
	 
	 
    Ecra u_ecra (
        .en(en),
        .pin_corret(pin_corret),
        .saldo_suficiente(saldo_suficiente),
        .novo_saldo(novo_saldo),
        .ecra(ecra)
    );
	 
    initial begin

        // 1 = EN=1 AUTENTICAÇAO VALIDA SALDO > VAL
		  en = 1;
        pin = 4'b0100;               
        cod = 5'b00100;              
        saldo = 8'b01011010;         
        valor_debito = 4'b0001;      
        PAR = 1;                     
        #10;
		  
        //  2 = EN=1 AUTENTICAÇAO VALIDA SALDO > VAL
        en = 0;
        pin = 4'b1001;               
        cod = 5'b01011;              
        saldo = 8'b11010010;         
        valor_debito = 4'b0010;      
        PAR = 1;                     
        #10;


        //  3 = EN=1 AUTENTICAÇAO VALIDA SALDO > VAL
        en = 0;
        pin = 4'b0101;               
        cod = 5'b00101;              
        saldo = 8'b01000110;         
        valor_debito = 4'b0111;      
        PAR = 1;                     
        #10;
		  
        //  4 = EN=1 AUTENTICAÇAO VALIDA SALDO < VAL
        en = 0;
        pin = 4'b0101;               
        cod = 5'b00101;              
        saldo = 8'b00000110;         
        valor_debito = 4'b1111;      
        PAR = 1;                     
        #10;
		  

		  
	
        $finish;
    end

    initial begin
        $monitor("Tempo: %0t | en: %b | pin: %b | cod: %b | saldo: %d | valor_debito: %d | ecra: %b | pin_corret: %b | saldo_suficiente: %b | novo_saldo: %d",
                 $time, en, pin, cod, saldo, valor_debito, ecra, pin_corret, saldo_suficiente, novo_saldo);
    end

endmodule
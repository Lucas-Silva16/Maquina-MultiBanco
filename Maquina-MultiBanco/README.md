# Caixa Multibanco Digital 💳🔐

Este projeto implementa uma **caixa multibanco (ATM)** digital em Verilog, com simulação no **ISE Xilinx**, combinando lógica sequencial e esquemática para simular funcionalidades básicas de um terminal bancário.

## 🎯 Objetivo

Criar um sistema digital que simule operações essenciais de uma caixa multibanco:
- Verificação de cartão (EN)
- Autenticação por PIN
- Débito de saldo com base num valor inserido
- Geração de sinal de paridade para segurança

## ⚙️ Funcionamento do Sistema

1. **Inserção de Cartão (EN)**  
   - `EN = 1` → cartão não inserido → sistema inativo  
   - `EN = 0` → cartão inserido → iniciar verificação do PIN  

2. **Verificação do PIN**  
   - PIN inserido (4 bits) comparado com o código COD (5 bits, armazenado em BCD Excesso-3)  
   - Se incorreto → `ECRA = 0`, `PAR = 1`, sistema inativo  
   - Se correto → continuar operação bancária

3. **Transação Bancária**
   - Valor da transação (`VAL`, 4 bits, complemento para 2)
   - Subtração de `VAL` do `SALDO`
   - Atualização do `SALDO` e exibição do novo valor no `ECRA`

4. **Geração de Paridade**
   - Bit de paridade gerado com base nos números mecanográficos do grupo, para validação extra de integridade

## 🧾 Componentes Principais

| Componente | Descrição |
|------------|-----------|
| `EN`       | Entrada (1 bit), indica presença do cartão |
| `PIN`      | Entrada (4 bits), código inserido pelo utilizador |
| `COD`      | Código de autenticação (5 bits, BCD Excesso-3) |
| `SALDO`    | Valor disponível na conta |
| `VAL`      | Valor da transação (4 bits, complemento para 2) |
| `ECRA`     | Saída, representa valor exibido no visor |
| `PAR`      | Bit de paridade (1 bit) |

## 🛠️ Implementação

- Utilização de módulos separados para verificação de PIN, atualização de saldo e geração de paridade.
- Códigos desenvolvidos em Verilog com parte esquemática integrada.
- Simulação de todas as funcionalidades no **ISE Xilinx**.

## 🧪 Casos de Teste

- Cartão não inserido → sistema inativo
- PIN inválido → operação bloqueada
- PIN correto → débito autorizado, saldo atualizado
- Verificação do valor exibido no `ECRA` e sinal `PAR` gerado corretamente

## 🧠 Conceitos Aplicados

- Comparação binária e BCD Excesso-3
- Complemento para 2
- Lógica sequencial síncrona
- Armazenamento e atualização de memória (saldo)

## 📚 Conclusão

Este projeto demonstra de forma clara o funcionamento básico de um **sistema bancário digital**, integrando conceitos de eletrónica digital, verificação de segurança e operações aritméticas. Ótimo para consolidar conhecimento em **sistemas digitais** com Verilog e simulação FPGA.


require 'rspec'
require_relative '../src/calculadora'

describe('TDD Calculadora') do 
    
    calculadora = Calculadora.new
#Calculo de adição
    it('Deve somar dois numeros inteiros positivos') do
        expect(calculadora.soma(4, 2)).to eq 6
    end

    it('Deve somar um número com 0') do
        expect(calculadora.soma(5, 0)).to eq 5
    end

    it('Deve somar dois números inteiros negativos') do
        expect(calculadora.soma(-4, -1)).to eq -5
    end

    it('Deve somar um número inteiro negativo com um número inteiro positivo') do
        expect(calculadora.soma(-4, 7)).to eq 3
    end

    it('Deve somar um número inteiro negativo com 0') do
        expect(calculadora.soma(-5, 0)).to eq -5
    end    

    it('Deve somar um numero negativo com um positivo') do 
        expect(calculadora.soma(-45, 63)).to eq 18
    end

    it('Deve somar dois números flutuantes positivos') do
        expect(calculadora.soma(14.78, 3.45)).to eq 18.2
    end    

    it('Deve somar dois números flutuantes negativos') do
        expect(calculadora.soma(-35.66, -58.23)).to eq -93.9
    end

    it('Deve somar um número flutuante negativo com um número flutuante positivo') do
        expect(calculadora.soma(-35.66, 58.23)).to eq 22.6
    end

    it('Deve somar um número flutuante com 0') do
        expect(calculadora.soma(43.6, 0)).to eq 43.6
    end
    
    it('Deve somar um número flutuante negativo com 0') do
        expect(calculadora.soma(-55.6, 0)).to eq -55.6
    end

#Calculo de subtração
    it('Deve subtrair dois números inteiros') do
        expect(calculadora.subtrai(7, 3)).to eq 4
    end

    it('Deve subtrair dois números inteiros sendo o primeiro seja menor') do
        expect(calculadora.subtrai(8, 10)).to eq -2
    end

    it('Deve subtrair um número inteiro por zero') do
        expect(calculadora.subtrai(8, 0)).to eq 8
    end    

    it('Deve subtrair um número inteiro negativo por zero') do
        expect(calculadora.subtrai(-8, 0)).to eq -8
    end 

    it('Deve subtrair dois número inteiros negativos') do
        expect(calculadora.subtrai(-30, -20)).to eq -10
    end

    it('Deve subtrair dois número inteiros negativos sendo o primeiro menor') do
        expect(calculadora.subtrai(-4, -8)).to eq 4
    end

    it('Deve subtrair um número inteiro positivo com um número interiro negativo') do
        expect(calculadora.subtrai(15, -3)).to eq 18
    end

    it('Deve subtrair um número inteiro negativo com um número interiro positivo') do
        expect(calculadora.subtrai(-35, 53)).to eq -88
    end

    it('Deve subtrair dois números flutuantes') do
        expect(calculadora.subtrai(52.66, 45.73)).to eq 6.9
    end

    it('Deve subtrair dois números flutuantes sendo o primeiro número menor') do
        expect(calculadora.subtrai(23.55, 33.36)).to eq -9.8
    end

    it('Deve subtrair dois números flutuantes negativos') do
        expect(calculadora.subtrai(-23.55, -33.36)).to eq 9.8
    end

    it('Deve subtrair um número flutuante positivo por um número flutuante negativo') do
        expect(calculadora.subtrai(44.63, -3.36)).to eq 48.0
    end

    it('Deve subtrair um número flutuante com 0') do
        expect(calculadora.subtrai(43.6, 0)).to eq 43.6
    end

    it('Deve subtrair um número flutuante negativo com 0') do
        expect(calculadora.subtrai(-55.6, 0)).to eq -55.6
    end

#Calculo de multiplicação
    it('Deve multiplicar dois números inteiros') do
        expect(calculadora.multiplica(43, 52)).to eq 2236
    end    

    it('Deve multiplicar dois números inteiros negativos') do
        expect(calculadora.multiplica(-53, -6)).to eq 318
    end 

    it('Deve multiplicar um número inteiro positivo por um número inteiro negativo') do
        expect(calculadora.multiplica(53, -6)).to eq -318
    end 

    it('Deve multiplicar um número inteiro negativo por zero') do
        expect(calculadora.multiplica(-235, 0)).to eq 0
    end 

    it('Deve multiplicar 0 por um número inteiro') do
        expect(calculadora.multiplica(0, 2131)).to eq 0
    end     

    it('Deve multiplicar um número inteiro por zero') do
        expect(calculadora.multiplica(435, 0)).to eq 0
    end 

    it('Deve multiplicar dois números flutuantes') do
        expect(calculadora.multiplica(45.23, 53.38)).to eq 2414.4
    end   

    it('Deve multiplicar dois números flutuantes negativos') do
        expect(calculadora.multiplica(-12.22, -43.54)).to eq 532.1
    end 

    it('Deve multiplicar um número flutuante positivo por um número um negativo') do
        expect(calculadora.multiplica(14.64, -2.43)).to eq -35.6
    end

    it('Deve multiplicar um número flutuante por 0') do
        expect(calculadora.multiplica(12.22, 0)).to eq 0
    end   

    it('Deve multiplicar um número flutuante negativo por 0') do
        expect(calculadora.multiplica(-43.54, 0)).to eq 0
    end 


end
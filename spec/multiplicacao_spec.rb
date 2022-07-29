require 'rspec'
require_relative '../src/calculadora'

describe('Calculo de multiplicação') do 
    
    calculadora = Calculadora.new
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
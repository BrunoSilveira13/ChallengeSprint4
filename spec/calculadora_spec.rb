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

end
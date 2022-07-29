require 'rspec'
require_relative '../src/calculadora'

describe('Calculo de divisão') do 
    
    calculadora = Calculadora.new

    it('Deve dividir dois números inteiros') do
        expect(calculadora.divide(44, 6)).to eq 7
    end

    it('Deve dividir dois números inteiros sendo que o primeiro menor') do
    expect(calculadora.divide(5, 15)).to eq 0
    end

    it('Deve dividir dois números inteiros negativos') do
        expect(calculadora.divide(-52, -10)).to eq 5
    end

    it('Deve dividir um número inteiro positivo por um número inteiro negativo') do
        expect(calculadora.divide(-52, 60)).to eq -1
    end

    it('Deve dividir 0 por um número inteiro') do
        expect(calculadora.divide(0, 55)).to eq 0 

    end

    it('Deve dividir dois números flutuantes') do
        expect(calculadora.divide(23.6, 5.2)).to eq 4.5
    end

    it('Deve dividir dois números flutuantes negativos') do
        expect(calculadora.divide(-23.6, -5.2)).to eq 4.5
    end

    it('Deve dividir um número flutuante negativo por um número flutuante positivo') do
        expect(calculadora.divide(-58.3, 6.6)).to eq -8.8
    end

    it('Deve dividir um número flutuante positivo por um número flutuante negativo') do
        expect(calculadora.divide(58.3, -6.6)).to eq -8.8
    end

    it('Não deve dividir nenhum número por 0') do
        expect(calculadora.divide(7, 0)).to eql "erro"
    end
end
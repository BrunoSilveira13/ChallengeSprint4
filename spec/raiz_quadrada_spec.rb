require 'rspec'
require_relative '../src/calculadora'

describe('Calculo de raiz quadrada') do 
    
    calculadora = Calculadora.new

    it('Deve apresetar a raiz quadrada de um número inteiro') do
        expect(calculadora.quadrada(49)).to eq 7
    end

    it('Deve apresetar a raiz quadrada de um número flutuante') do
        expect(calculadora.quadrada(73.86)).to eq 8.6
    end

    it('Não deve apresetar a raiz quadrada de um número inteiro negativo') do
        expect(calculadora.quadrada(-56)).to eql "erro"
    end

    it('Não deve apresetar a raiz quadrada de um número fluante negativo') do
        expect(calculadora.quadrada(-34.43)).to eql "erro"
    end
end
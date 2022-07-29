require 'rspec'
require_relative '../src/calculadora'

describe('Calculo de raiz cúbica') do 
    
    calculadora = Calculadora.new

    it('Deve apresentar a raiz cúbica de um número inteiro') do
        expect(calculadora.cubica(12)).to eq 2.3
    end    

    it('Deve apresentar a raiz cúbica de um número inteiro negativo') do
        expect(calculadora.cubica(-55)).to eq -3.8
    end 

    it('Deve apresentar a raiz cúbica de um número flutuante') do
        expect(calculadora.cubica(19.6)).to eq 2.7
    end 

    it('Deve apresentar a raiz cúbica de um número flutuante negativo') do
        expect(calculadora.cubica(-76.8)).to eq -4.3
    end 

end
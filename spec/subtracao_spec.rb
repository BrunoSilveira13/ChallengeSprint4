require 'rspec'
require_relative '../src/calculadora'

describe('Calculo de subtração') do 
    
    calculadora = Calculadora.new

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
end
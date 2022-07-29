class Calculadora
    def soma(primeiro_numero, segundo_numero)
        resulatado = primeiro_numero + segundo_numero  
        resulatado.round(1)  
    end
    def subtrai(primeiro_numero, segundo_numero)
        resulatado = primeiro_numero - segundo_numero  
        resulatado.round(1)     
    end

    def multiplica(primeiro_numero, segundo_numero)
        resulatado = primeiro_numero * segundo_numero  
        resulatado.round(1)     
    end

    def divide(primeiro_numero, segundo_numero)
        return "erro" if segundo_numero == 0 
        resultado = primeiro_numero / segundo_numero 
        resultado.round(1) 
    end

#Tive a ajuda do Gabriel Vanz para utilizar o modulo Math
    def quadrada(numero)
        return "erro" if numero < 1
        resultado = Math.sqrt(numero)
        resultado.round(1)         
    end

end
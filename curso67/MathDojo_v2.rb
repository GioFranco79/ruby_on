class MathDojo

    def initialize(res = 0, arr = []) 
        @resultado = res 
    end

    def add (*argumentos)
        sum = @resultado
        array = trans argumentos
        puts "Array add : #{array.to_s}"
        array.each do |arg|            
            if arg.class.to_s == "Array"
                for i in arg
                    sum = sum + i
                end
            else
                sum = sum + arg
            end
        end
        @resultado = sum
        self        
    end

    def subtract (*argumentos)
        resta = @resultado
        array = trans argumentos
        puts "Array subtract: #{array.to_s}"
        array.each do |arg|
            if arg.class.to_s == "Array"
                for i in arg
                    resta = resta - i
                end
            else
                resta = resta - arg
            end            
        end
        @resultado = resta
        self        
    end

    def trans x
        if x.class.to_s == "Array"
            i = 0 
            while i < x.length-1
                aux = x[i]               
                if aux.class.to_s == "Array"
                    x.delete_at(i)
                    if i == 0
                        i = i - 1
                    end                   
                    x = x + aux
                end
                i = i + 1
            end
            return x
        else
            return x 
        end       
    end

    def result
        @resultado
    end
end

  desafio1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
  puts "*********************************************************************"
  puts "El resultado 1 es : #{desafio1}"
  desafio2 = MathDojo.new.add(1).add([3, 5, [7, 5,[ 1,[ 5, 5] , 2], 3, 5], 4, 5], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
  puts "*********************************************************************"
  puts "El resultado 2 es : #{desafio2}"
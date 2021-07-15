require_relative 'mamifero'
class Perro < Mamifero
    def acariciar
        @salud = @salud + 5
        puts "Caricias : excelente la salud subio a #{@salud}"
    end
    def caminar
        @salud = @salud - 1 
        puts "Caminando : La salud disminuyo a #{@salud}"
    end
    def correr
        @salud = @salud - 5 
        puts "Corriendo : la salud disminuyo a #{@salud}"
    end
end
cachupin = Perro.new
cachupin.caminar
cachupin.caminar
cachupin.caminar
cachupin.correr
cachupin.correr
cachupin.acariciar
cachupin.mostrar_salud
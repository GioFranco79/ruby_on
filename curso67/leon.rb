require_relative 'mamifero'
class Leon < Mamifero
    def volar
        @salud = @salud - 10
        puts "Volando por los cielos, la salud baja a #{@salud}"
    end
    def atarcar_ciudad
        @salud = @salud - 50
        puts "Atacando la ciudad, la salud baja a #{@salud}"
    end
    def comer_humanos
        @salud = @salud + 20
        puts "Que deliciosos humanos, la salud sube a #{@salud}"
    end
end
mufasa = Leon.new(170)
mufasa.atarcar_ciudad
mufasa.atarcar_ciudad
mufasa.atarcar_ciudad
mufasa.comer_humanos
mufasa.comer_humanos
mufasa.volar
mufasa.volar
mufasa.mostrar_salud("Este es un león : ")
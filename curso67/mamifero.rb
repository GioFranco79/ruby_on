class Mamifero
    def initialize(sal = 150)
        @salud = sal
    end
    def mostrar_salud (mensaje = "")
        puts "#{mensaje}La salud es de #{@salud}"
    end
end

class Humano
    attr_accessor :fuerza, :sigilo, :inteligencia, :salud 
    def initialize 
        @fuerza = 3
        @sigilo = 3
        @inteligencia = 3
        @salud = 100
    end
    def ataque objeto
        clases = objeto.class.ancestors.to_s       
        if clases.match? ("Humano")
            objeto.salud -= 10
            puts "Atacaste a un humano, la salud del humano atacado es #{objeto.salud}"
            true
        else
            false
        end
    end
end
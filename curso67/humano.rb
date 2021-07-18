class Humano
    attr_reader :fuerza, :sigilo, :inteligencia, :salud 
    def initialize 
        @fuerza = 3
        @sigilo = 3
        @inteligencia = 3
        @salud = 100
    end
    def ataque objeto
        clases = objeto.class.ancestors.to_s       
        if clases.match? ("Humano")
            @salud = salud - 10
            puts "Atacaste a un humano, tu salud es de #{@salud}"
            true
        else
            false
        end
    end
end
juanito = Humano.new
haitiano = Humano.new
juanito.ataque haitiano
class Humano
    attr_reader :fuerza, :sigilo, :inteligencia, :salud 
    def initialize 
        @fuerza = 3
        @sigilo = 3
        @inteligencia = 3
        @salud = 100
    end
    def ataque objeto
        puts objeto.class.ancestors
        @salud = salud - 1
        puts "Atacaste a un humano, tu salud es de #{@salud}"
    end
end
juanito = Humano.new
haitiano = Humano.new
juanito.ataque haitiano
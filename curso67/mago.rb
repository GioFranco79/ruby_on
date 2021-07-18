require_relative 'humano'
class Mago < Humano    
    def initialize
        @salud = 50
        @inteligencia = 25
    end
    def curar
        @salud += 10
        puts "Te curaste y tu salud es #{@salud}"
    end
    def bola_de_fuego obj
        obj.salud -= 20
        puts "Atacaste a un humano y su salud es #{obj.salud}"
    end
end

gandalf = Mago.new
saruman = Mago.new

gandalf.bola_de_fuego saruman
saruman.curar
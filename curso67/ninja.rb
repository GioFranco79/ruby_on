require_relative 'humano'
class Ninja < Humano    
    def initialize
        @sigilo = 175
        @salud = 100   
    end
    def robo obje
        @salud += 10
        ataque obje
        puts "Atacaste y robaste salud y ahora tu salud es #{@salud}"
    end
    def huir
        @salud -= 15
        puts "Has huido, tu salud es  #{@salud}"
    end
end

naruto = Ninja.new
saske = Ninja.new

naruto.robo saske
saske.huir
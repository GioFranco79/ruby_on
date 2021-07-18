require_relative 'humano'
require 'set'
class Samurai < Humano
    @@samurais = Set.new  
    def initialize
        @salud = 200
        @@samurais << self    
    end
    def golpe_mortal obje
        obje.salud = 0
        puts "Atacaste y mataste a tu rival, su salud es #{obje.salud}"
    end
    def meditar
        @salud = 200
        puts "Has huido, tu salud es  #{@salud}"
    end
    def self.cuantos
        @@samurais.size
    end
end

kenshin = Samurai.new
shishio = Samurai.new

kenshin.golpe_mortal shishio
puts "Cantidad de samurais #{Samurai::cuantos}"
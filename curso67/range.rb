a = (1..17)
puts "Esto incluye al 8!" if a.include?(8)
puts "El ultimo numero del rango es : " + a.last.to_s
puts "El numero mayor de este rango es : " + a.max.to_s
puts "El numero menor de este rango es :" + a.min.to_s

y = ('a'..'z')
puts y.to_a.shuffle.to_s
a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5,6,9,3,1,2,4,7,8,10]
d = ["Guido",9]
puts a[0]
puts a[1]
puts b.class
puts b.shuffle.join(", ") # Desordena y une el array con ,
puts a.to_s
puts a+b
puts (a+b)-c
puts a.at(2)
puts b.delete(8)
puts b.reverse
puts "El numero de elemento de b es : "+(b.length).to_s
puts b.sort!
puts b.slice(1,3) # crea un nuevo subarreglo desde 1 con 3 elementos
puts b.insert(5,9)
puts a.values_at(0,1,2)

d = %w{argentina brasil Chile}
puts d.values_at(0,1,2).join(' y ')
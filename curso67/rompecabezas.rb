x = [3,5,1,2,7,9,8,13,25,32]
def rompe1 arr
    sum = 0
    for i in 0..arr.length-1
        sum = sum + arr[i]
    end
    puts "Suma de la arreglo : #{sum}"
    return arr.find_all{|n| n > 10}
end
puts (rompe1 x).to_s

nom = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
nombres = nom.shuffle.find_all{|n| n.length > 5 }
puts "Nombres : #{nombres.to_s}"

abc = ("a".."z").to_a
puts abc.shuffle!.to_s
if (abc[0] =='a' || abc[0] =='e' || abc[0] =='i' || abc[0] =='o' || abc[0] =='u')
    puts "La primera letra es una vocal "
end
puts abc[0]
puts abc[abc.length-1]

aleatorio = (55..100).to_a
numeros = []
for i in 0..10
    numeros.push(aleatorio[rand(45)])
end
puts "Numeros aleatorios : #{numeros.to_s}"

cadena = []
for i in 0..4
    cadena.push((65+rand(26)).chr)
end
str = cadena.join("")
puts "La cadena es : #{str}"

cadenas = []
for i in 0..9
    cadena = []
    for i in 0..4
        cadena.push((65+rand(26)).chr)
    end
    cadenas.push(cadena.join(""))
end
puts cadenas.to_s

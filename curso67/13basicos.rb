for i in 1..255
    puts i
end

impar = 1
for i in 1..128
    puts impar
    impar = impar + 2
end

sum = 0
for i in 0..255
    sum = sum + i
    puts "Numero : " + i.to_s + " y la suma : " + sum.to_s
end

x = [1,3,5,7,9,13]
for i in 0..x.length-1
    puts "Elemento : " + x[i].to_s
end

numeros = (0..100)
puts "El valor maximo del arreglo es : " + numeros.max.to_s

sum = 0
for i in 0..x.length-1
    sum = sum + x[i]
end
puts "El promedio del arreglo x es #{sum}/#{i+1} : #{sum/(i+1)}"

impar = 1
impares = []
for i in 1..128
    impares.push(impar)
    impar = impar + 2
end
puts impares.join(", ")

def mayorQueY valor, arr
    for i in 0..arr.length-1
        puts "El numero #{arr[i]} es mayor que #{valor}" if valor < arr[i]
    end
end

mayorQueY 5, x

def alCuadrado arr
    cuadra = []
    for i in 0..arr.length-1
        cuadra.push(arr[i] * arr[i])
    end
    return cuadra
end
puts "Arreglo original : #{x.to_s}"
x = alCuadrado x
puts "Arreglo al cuadrado : #{x.to_s}"

x = [-4,3,-1,4,-3,5]

def noNegativo arr
    for i in 0..arr.length-1
        if arr[i] < 0
            arr[i] = 0
        end
    end
    return arr
end
puts "Arreglo original : #{x.to_s}"
x = noNegativo x
puts "Arreglo sin negativos : #{x.to_s}"

def maxYmin arr
    sum = 0
    max = arr[0]
    min = arr[0]
    for i in 0..arr.length-1
        sum = sum + arr[i]
        if arr[i] > max
            max = arr[i]
        end
        if arr[i] < min
            min = arr[i]
        end
    end
    return {:max=>max, :min=>min, :prom=>(sum/(i+1))}
end
x = [3,5,7,2,3]
puts "Notas : #{x.to_s}"
datos = maxYmin x
puts datos

def cambioArr arr
    for i in 0..arr.length-2
        arr[i] = arr[i+1]
    end
    arr[i+1] = 0
    return arr  
end
puts "Arreglo original : #{x.to_s}"
puts "Con el cambio : #{(cambioArr x).to_s}"

def negativoDojo arr
    for i in 0..arr.length-1
        if arr[i] < 0
            arr[i] = "Dojo"
        end
    end
    return arr
end
x = [1,-3,9,5,-2,-5,4,6]
puts "Arreglo original : #{x.to_s}"
puts "Con el cambio : #{(negativoDojo x).to_s}"

















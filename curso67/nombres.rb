a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]

def muestra arr
    puts "Tienes #{arr.length} nombres en el arreglo nombres"
    for i in 0..arr.length-1
        puts "El nombre es '#{arr[i][:nombre]} #{arr[i][:apellido]}'"
    end
end
muestra nombres        

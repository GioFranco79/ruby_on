def adivina_numero valor
    number = 25
    puts "¡lo conseguiste!" if valor == number
    puts "¡La suposicion fue demasiado alta!" if valor > number
    puts "¡La suposicion fue demasiado baja!" if valor < number
end
opcion = 1
while opcion > 0 do
    puts "Ingrese un numero (0 para salir) "
    STDOUT.flush
    numero = gets.chomp
    adivina_numero numero.to_i
    opcion = numero.to_i
end
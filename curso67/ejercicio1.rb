puts "Hola Clase"
3.times { puts "WxW"}
24.class
puts "Tipo dato: #{24.class}"

x = puts "Hello World!"
puts x

puts "24 + 8 es #{24 + 8}"
puts '24 + 8 #{24 + 8}'
puts "24 + 8 es " + (24+8).to_s # convierte a string

puts "".empty?
puts "Wenas".empty?

puts "Hola clase!".length
puts "Hola clase".split(" ")
puts "Hola Clase".split("a")
puts "Giovanni-Franco-Calfiqueo-42-Puerto-Montt-alumno".split("-")

nombre = "Gio"
nombre[0] = "Y"
puts nombre

age = 20
if age < 21
    puts "Bienvenido a la fiesta."
  else
    puts "Todavía no."
  end

  number = 15
  if number % 3 == 0 && number % 5 == 0
    puts "FizzBuzz"
  elsif number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  end

  if !(age < 21)
    puts "Bienvenido a la fiesta 2."
  else
    puts "Todavía no 2."
  end
  
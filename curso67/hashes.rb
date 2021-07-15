x = {first_name:"Coding", last_name:"Dojo"}

puts x["first_name"], x["last_name"]
puts "Tu apellido es Dojo" if x["last_name"].eql? "Dojo"

y = {:first_name => "Coding", :last_name => "Dojo"}
puts "Y es ", y
puts y[:first_name], y[:last_name]

puts "Borrando : first_name "
y.delete(:first_name)
puts "Y es ahora ", y

if y.has_key? :first_name
    puts "Y tiene una llave llamada :first_name"
else
    puts "Y no tiene una llave llamada :first_name"
end

if y.has_value? "Dojo"
    puts "Y tiene una valor llamado Dojo"
else
    puts "Y no tiene un valor llamado Dojo"
end

def nuevo_usuario usuario = {nombre: "Giovanni", apellido: "Franco"}
  puts "Bienvenido a nuestro sitio, #{usuario[:nombre]} #{usuario[:apellido]}!"
end

nuestro_usuario = {nombre: 'Oscar', apellido: "Vazquez"}
nuevo_usuario # => "Bienvenido a nuestro sitio, Nombre Apellido!"
nuevo_usuario nuestro_usuario # => "Bienvenido a nuestro sitio, Oscar Vasquez!"

def nuevo_usuario saludo="Wenas", nombre: "Giovanni", apellido: "Franco"
    puts "#{saludo}, #{nombre} #{apellido}"      
end
usuario = {nombre: "Oscar", apellido: "Vazquez"}
nuevo_usuario                  # => Bienvenido, Nombre Apellido
nuevo_usuario "Hola", usuario # => Hola, Oscar Vazquez


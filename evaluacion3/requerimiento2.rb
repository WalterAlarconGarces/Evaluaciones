# Generar un número al azar entre 0 y n
n = 10 # el numero se puede cambiar
numero_aleatorio = rand(n)

# pido al usuario que adivine el número
puts "Adivina el número entre 0 y #{n}"
numero_usuario = gets.to_i

# Repito el juego hasta que el usuario adivine el número
while numero_usuario != numero_aleatorio
  # Mostrar una pista al usuario
  if numero_usuario > numero_aleatorio
    puts "Tu número es mayor que el número del computador"
  else
    puts "Tu número es menor que el número del computador"
  end

  # Pido otro número al usuario
  puts "Intenta de nuevo"
  numero_usuario = gets.to_i
end

# Felicito al usuario por ganar
puts "¡Ganaste! El número era #{numero_aleatorio}"

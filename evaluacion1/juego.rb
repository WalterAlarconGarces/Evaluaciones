# Imprimir un mensaje solicitando la apuesta del usuario
puts "ingrese piedra, papel o tijera o salir para terminar el juego"
# Guardar la apuesta del usuario en una variable y convertirla a mayúscula la letra inicial
apuesta = gets.chomp.capitalize

# Iniciar un bucle que se repita hasta que el usuario ingrese "salir"
while apuesta != "Salir"
  # Iniciar otro bucle que se repita hasta que el usuario ingrese una opción válida
  while apuesta != "Piedra" && apuesta != "Papel" && apuesta != "Tijera"
    # Imprimir un mensaje indicando que la apuesta es inválida y solicitando otra
    puts "Apuesta inválida. Por favor ingrese piedra, papel o tijera o salir para terminar el juego."
    # Guardar la nueva apuesta del usuario en la misma variable y convertirla a mayúscula la primera letra
    apuesta = gets.chomp.capitalize
  end

  # Generar un número aleatorio entre 0 y 2 para representar la elección del computador
  aleatorio = rand(3)
  # Asignar una opción al comptador según el número aleatorio
  if aleatorio == 0
    computador = "Piedra"
  elsif aleatorio == 1
    computador = "Papel"
  else
    computador = "Tijera"
  end

  # Imprimir las apuestas del usuario y del computador
  puts "Apuesta usuario: #{apuesta}, Ordenador: #{computador}"

  # Comparar las apuestas y determinar el ganador o el empate
  if apuesta == computador
    puts "Empate, los dos eligieron #{apuesta}"
  else
    if apuesta == "Piedra" && computador == "Papel"
      puts "#{apuesta} vs #{computador}, gana el ordenador."
    elsif apuesta == "Piedra" && computador == "Tijera"
      puts "#{apuesta} vs #{computador}, gana el usuario"
    elsif apuesta == "Papel" && computador == "Tijera"
      puts "#{apuesta} vs #{computador}, gana el ordenador."
    elsif apuesta == "Papel" && computador == "Piedra"
      puts "#{apuesta} vs #{computador}, gana el usuario"
    elsif apuesta == "Tijera" && computador == "Piedra"
      puts "#{apuesta} vs #{computador}, gana el ordenador."
    elsif apuesta == "Tijera" && computador == "Papel"
      puts "#{apuesta} vs #{computador}, gana el usuario"
    end
  end

  # Solicitar otra apuesta al usuario para continuar el juego o terminarlo
  puts "ingrese piedra, papel o tijera o salir para terminar el juego"
  # Guardar la nueva apuesta del usuario en la misma variable y convertirla a mayúscula la primera letra de la palabra
  apuesta = gets.chomp.capitalize
end
# Defino una función que calcula el índice de masa corporal (IMC) a partir del peso y la altura
def formula_imc(valor1, valor2)
  # El IMC se obtiene dividiendo el peso entre el cuadrado de la altura
  imc = valor1 / valor2**2
  # Devuelvo el valor del IMC
  return imc
end

# Defino una función que muestra el resultado del IMC y su clasificación
def calcular_imc(imc)
  # muestro el valor del IMC con dos decimales
  puts("Tu índice de masa corporal es => #{imc.round(2)}")
  # Uso una estructura condicional para determinar la categoría del IMC
  if imc < 18.5
    # Si el IMC es menor que 18.5, se considera bajo de peso
    puts "El índice calculado es Bajo de peso"
  elsif imc >=18.5 and imc <= 24.9
    # Si el IMC está entre 18.5 y 24.9, se considera normal
    puts "El índice calculado es Normal"
  elsif imc >= 25.0 and imc <= 29.9
    # Si el IMC está entre 25.0 y 29.9, se considera sobrepeso
    puts "El índice calculado es Sobrepeso"
  else
    # Si el IMC es mayor o igual que 30, se considera obesidad
    # Uso una variable para almacenar el grado de obesidad según el IMC
    if imc >= 30 and imc <=34.9
      grado = "I , Moderado"
    elsif imc >= 35 and imc <= 39.9
      grado = "II, Severo"
    else
      grado = "III, Muy severo"
      
    end
    # Imprimo el grado de obesidad correspondiente al IMC
    puts "El índice calculado es Obesidad grado #{grado}"    
  end
end

# Muestro un mensaje de bienvenida al programa
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
# Solicito al usuario que ingrese su peso en kilogramos y lo convierto a un número decimal
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f

# Solicito al usuario que ingrese su altura en metros y convierto a un número decimal
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

# Llamo a la función formula_imc con los valores ingresados por el usuario y asigno el resultado a una variable
resultado = formula_imc(peso, altura)
# Llamo a la función calcular_imc con la variable resultado y muestro el resultado por pantalla
calcular_imc(resultado)

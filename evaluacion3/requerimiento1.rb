#se define la funcion
def nuevo_salario(salario, incremento)
  """Calcula el nuevo salario de un empleado.

  Argumentos:
    salario: el salario actual del empleado.
    incremento: la cantidad de aumento del salarioo.

  Retorna: el nuevo salario del empleado.
  """

  nuevo_salario = salario + (salario * incremento / 1000)

  #puedo imprimir por consola una descripcion de los datos involucrados, como medio de comprobacion con la siguiente linea:
  # puts "salario antiguo: #{salario}, incremento #{incremento}, el nuevo salario es #{nuevo_salario}"


  #retorno el resultado de la operacion
  return nuevo_salario
end

#solicito la informacion salarial
puts "Ingrese salario actual"
#almaceno la informacion en una variable
salario_actual = gets

#solicito la informacion del incremento
puts "ingrese incremento"
incremento = gets

#expresion regular para saber si tiene letras o solamente digitos
EXPRESION_REGULAR = /^\d+$/
comparacion_salario = salario_actual =~ EXPRESION_REGULAR
comparacion_incremento = incremento =~ EXPRESION_REGULAR  

#verificacion de datos entregados por usuario y/o entrega de resultado
if comparacion_salario and comparacion_incremento
  puts "su nuevo saliario sería #{nuevo_salario(salario_actual.to_i,incremento.to_i)}"
else
  puts "Error, debe ingresar solamente números"
end  







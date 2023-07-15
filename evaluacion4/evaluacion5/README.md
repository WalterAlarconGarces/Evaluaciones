# Clase Ruby

## Descripción
Este código define una clase `Person` y sus herederos `Parent`, `Student` y `Teacher`. La clase `Person` tiene tres atributos: `first_name`, `last_name` y `age`. El método `initialize` se utiliza para inicializar los valores de estos atributos. El método `birthday` se utiliza para aumentar la edad de la persona en 1. El método `introduce` se utiliza para imprimir el nombre completo de la persona.

La clase `Parent` hereda de la clase `Person`. La clase `Parent` tiene dos métodos adicionales: `talk`, que imprime una cadena de texto, y `introduce`, que imprime el nombre completo del padre.

La clase `Student` hereda de la clase `Parent`. La clase `Student` tiene dos métodos adicionales: `talk`, que imprime una cadena de texto, y `introduce`, que imprime el nombre completo del estudiante.

La clase `Teacher` hereda de la clase `Person`. La clase `Teacher` tiene dos métodos adicionales: `talk`, que imprime una cadena de texto, y `introduce`, que imprime el nombre completo del profesor.

## Requisitos
Este código requiere Ruby 2.0 o superior.

## Uso
Para utilizar este código, simplemente copie el archivo en su proyecto Ruby y llame a las clases según sea necesario.

## Ejemplos
Aquí hay un ejemplo de cómo crear una instancia de la clase Student:

```
student = Student.new('Juan', 'Pérez', 15)
student.introduce
student.talk
```
## Créditos

- Este proyecto fue creado por Walter Alarcón Garces como parte de una evaluación del curso de Ruby.
- [@WalterAlarconGarces](https://github.com/WalterAlarconGarces)
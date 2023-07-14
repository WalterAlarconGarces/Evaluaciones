class Person
  #aquí defino simultaneamente los getter y los setters
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def birthday
    @age += 1
  end
  #aquí creo un metodo introduce para Person
  def introduce
    puts "¡Hola! Mi nombrre es #{@first_name} #{@last_name}."
  end
end

#Parent hereda de la clase Person
class Parent < Person
  def initialize(first_name, last_name, age)
    super(first_name, last_name, age)
  end
  #a continuacion los metodos talk e introduce para Parent
  def talk
    puts '¿Aquí es la reunión de apoderados?'
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

#Aqui defino Student como heredero de Parent
class Student < Parent
  def initialize(first_name, last_name, age)
    super(first_name, last_name, age)
  end
#a continuacion los metodos talk e introduce
  def talk
    puts '¿Aquí es la clase de programación con Ruby?'
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end


#aqui defino Teacher como heredero de persona
class Teacher < Person
  def initialize(first_name, last_name, age)
    super(first_name, last_name, age)
  end
#a continuacion los metodos talk e introduce
  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end
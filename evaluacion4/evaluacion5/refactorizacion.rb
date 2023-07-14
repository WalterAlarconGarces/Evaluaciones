class Person
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def birthday
    @age += 1
  end

  def introduce
    puts "Hi! My name is #{@first_name} #{@last_name}."
  end
end

class Parent < Person
  def initialize(first_name, last_name, age)
    super(first_name, last_name, age)
  end

  def talk
    puts 'Aquí es la reunión de apoderados?'
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Student < Parent
  def initialize(first_name, last_name, age)
    super(first_name, last_name, age)
  end

  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Teacher < Person
  def initialize(first_name, last_name, age)
    super(first_name, last_name, age)
  end

  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end
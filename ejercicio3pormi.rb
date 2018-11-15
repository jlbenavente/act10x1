# =begin
# ## Ejercicio 3: Herencia
# Se tiene la clase *Vehicle* que recibe como argumento un modelo y un año. El método *engine_start* enciende el vehículo.

# ~~~rb
# class Vehicle
#   def initialize(model, year)
#     @model = model
#     @year = year
#     @start = false
#   end

#   def engine_start
#     @start = true
#   end
# end
# ~~~

# Se pide: 
# - Crear una clase *Car* que herede de *Vehicle*
# - El constructor de *Car*, además de heredar las propiedades de *Vehicle*, debe incluir un contador de instancias de *Car*.
# - Crear un método de clase en *Car* que devuelva la cantidad de instancias.
# - El método *engine_start* heredado debe además imprimir *'El motor se ha encendido!'*.
# - Instanciar 10 *Cars*.
# - Consultar la cantidad de instancias generadas de *Car* mediante el método de clase creado.

# ## Ejercicio 4: Módulos
# Transformar la clase *Semana* en un módulo y obtener la misma salida:
# =end
require 'faker'
class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  attr_accessor :counter
  @@counter = 0
  def initialize(model, year)
    @@counter +=1
    super
  end

  def counter
    @@counter
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

def cars
  10.times do |cars|
    car = Car.new(Faker::Vehicle.model, Faker::Vehicle.year)
    puts "model:#{car.model} & year: #{car.year}"
   
  end
end
c =Car.new('sonata', '2008')
puts c.model
puts c.year

puts c.engine_start
cars
puts c.counter
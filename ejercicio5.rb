## Ejercicio 5: Mixins.
=begin
Transformar la clase *Herviboro* en un módulo. Implementar el
 módulo en la clase *Conejo* mediante *Mixin* para poder acceder
 l método *dieta* desde la instancia. Finalmente imprimir la 
 definición de Hervíboro.

~~~rb
=end


#--------------------------------------------------------------

module Herviboro

  def self.definir
    'Sólo me alimento de vegetales!'
  end

  def dieta
    "Soy un Herviboro!"
  end
end

module Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo
  include Herviboro
  include Animal
  
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
 puts conejo.dieta
puts Herviboro.definir


#### Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante Herencia de Herencia?
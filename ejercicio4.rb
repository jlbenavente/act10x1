

# ## Ejercicio 4: Módulos
# Transformar la clase *Semana* en un módulo y
 # obtener la misma salida:

# ~~~rb

module Semana

  def self.first_day
  'Lunes'
  end

  def self.primer_dia
    @@primer_dia
  end

  def self.en_un_meses
    "Un mes tiene 4 semanas."
  end

  def self.en_un_año
    "Un año tiene 52 semanas."
  end
end

puts "La semana comienza el día #{Semana.first_day}"
puts Semana.en_un_meses
puts Semana.en_un_año


# module Semana

#   def self.first_day
#     'Lunes'
#   end

#   def self.primer_dia
#     primer_dia
#   end

#   def self.en_un_mes
#     "Un mes tiene 4 semanas."
#   end

#   def self.en_un_año
#     "Un año tiene 52 semanas."
#   end
# end

# puts "La semana comienza el día #{Semana.first_day}"
# puts Semana.en_un_mes
# puts Semana.en_un_año
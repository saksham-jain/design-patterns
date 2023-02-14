require_relative 'decorator/margarita'
require_relative 'decorator/jelopino'
require_relative 'decorator/extra_cheese'

pizza = Margarita.new
puts "Margarita base pizza cost: #{pizza.cost}"

pizza = Jelopino.new(pizza)
puts "With Jelopino: #{pizza.cost}"

pizza = ExtraCheese.new(pizza)
puts "With ExtraChesse: #{pizza.cost}"
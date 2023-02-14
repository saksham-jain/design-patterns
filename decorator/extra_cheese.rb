require_relative 'topping'

# Concrete class
class ExtraCheese < Topping
  def cost
    pizza.cost + 20
  end
end
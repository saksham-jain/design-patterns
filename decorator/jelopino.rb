require_relative 'topping'

# Concrete class
class Jelopino < Topping
  def cost
    pizza.cost + 10
  end
end
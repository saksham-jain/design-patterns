# Abstract class
class Topping < BasePizza
  attr_reader :pizza

  def initialize(pizza)
    @pizza = pizza
  end
end
require_relative "i_builder"
require_relative "product"

class ConcreteBuilder < IBuilder
  attr_accessor :product

  def initialize
    reset
  end

  def reset
    @product = Product.new
  end

  def add_part_A
    @product.add('PartA')
  end

  def add_part_B
    @product.add('PartB')
  end

  def product
    p = @product
    reset
    p
  end
end

class Inventory
  attr_accessor :products

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def remove_product(product)
    @product.delete(product)
  end
end
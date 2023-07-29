class Cart
  attr_accessor :products, :total

  def initialize
    @products = []
    @total = 0
  end 

  def add_product(product)
    @products << product
    @total += product.price
  end

  def remove_product(product)
    @products.delete(product)
    @total -= product.price
  end
end
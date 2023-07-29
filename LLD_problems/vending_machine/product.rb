# can use interface and product factory here. But main purpose of this LLD is to use state design pattern.
class Product
  attr_accessor :name, :code, :price

  def initialize(name,code,price)
    @name = name
    @code = code
    @price = price
  end
end
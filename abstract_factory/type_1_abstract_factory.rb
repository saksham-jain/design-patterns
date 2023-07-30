require_relative "i_abstract_factory"
require_relative "product_a_type_1"
require_relative "product_b_type_1"

class Type1AbstractFactory < IAbstractFactory
  def create_product_A
    @productA = ProductAType1.new
  end

  def create_product_B
    @productB = ProductBType1.new
  end
end
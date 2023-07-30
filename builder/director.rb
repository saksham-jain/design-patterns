require_relative "concrete_builder"

class Director
  attr_accessor :builder

  def initialize(builder)
    @builder = builder
  end

  def build_minimal_product
    @builder.add_part_B
  end

  def build_full_fledged_product
    @builder.add_part_A
    @builder.add_part_B
  end
end
require_relative "concrete_builder"
require_relative "director"

builder = ConcreteBuilder.new
director = Director.new(builder)

builder.add_part_A
builder.add_part_B
product = builder.product
product.list_parts

director.build_minimal_product
product = director.builder.product
product.list_parts

director.build_full_fledged_product
product = director.builder.product
product.list_parts
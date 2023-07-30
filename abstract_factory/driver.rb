require_relative "type_1_abstract_factory"

type_1_abstract_factory = Type1AbstractFactory.new
product_a = type_1_abstract_factory.create_product_A
product_b = type_1_abstract_factory.create_product_B

puts product_a.inspect
puts product_b.inspect


# Here consider Products are Mac and Windows component.
# Type1 consider to be MacOS components. Type1AbstractFactory creates MacOS components.
# Avoiding risk of combining component of others OS.

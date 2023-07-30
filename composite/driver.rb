require_relative "leaf"
require_relative "composite"

leaf1 = Leaf.new('Leaf1')
leaf2 = Leaf.new('Leaf2')
composite_level_1 = Composite.new('Composite level 1')
composite_level_1.add_component(leaf1)
composite_level_2 = Composite.new('Composite level 2')
composite_level_2.add_component(leaf2)

composite_root = Composite.new('Composite root')
composite_root.add_component(composite_level_1)
composite_root.add_component(composite_level_2)

puts composite_root.request
require_relative "vending_machine"
require_relative "state/idle_state"
require_relative "product"
require_relative "inventory"

# product name taking as string for now. Should use enum values
coke1 = Product.new('coke', '1001', 30)
coke2 = Product.new('coke', '1002', 30)
coke3 = Product.new('coke', '1002', 30)
snack1 = Product.new('kurkure', '2001', 20)
snack2 = Product.new('kurkure', '2002', 20)

inventory = Inventory.new
inventory.add_product(coke1)
inventory.add_product(coke2)
inventory.add_product(coke3)
inventory.add_product(snack1)
inventory.add_product(snack2)

idle_state = IdleState.new
vending_machine = VendingMachine.new(inventory, idle_state)
idle_state.set_context(vending_machine)
vending_machine.click_order_button
vending_machine.select_product_and_quantity
puts vending_machine.inspect
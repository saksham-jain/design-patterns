class VendingMachine
  attr_accessor :inventory, :state

  def initialize(inventory, state)
    @inventory = inventory
    @state = state
  end

  def update_inventory(products)
    products.each do |p|
      inventory.add_product(p)
    end
  end 

  def change_state(state)
    @state = state
    state.set_context(self)
  end

  def click_order_button
    state.click_order_button
  end

  def select_product_and_quantity
    state.select_product_and_quantity
  end
end
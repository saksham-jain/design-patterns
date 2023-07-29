require_relative "i_state"
require_relative "accepting_order"

class IdleState < IState
  def click_order_button
    puts "Order button clicked"
    context.change_state(AcceptingOrder.new)
  end
end
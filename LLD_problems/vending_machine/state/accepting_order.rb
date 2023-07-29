require_relative "i_state"
require_relative "receive_payment"

class AcceptingOrder < IState
  def select_product_and_quantity
    puts "selecting products and quantities"
    context.change_state(ReceivePayment.new)
  end
end
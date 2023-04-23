require_relative "payment_service_interface"

class UpiService < PaymentServiceInterface
  def make_payment(amount:)
    puts "Deducting #{amount} from bank account linked with this UPI"
    puts "Deducted #{amount} from bank account linked with this UPI"
  end
end
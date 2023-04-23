require_relative "payment_service_interface"

class CardService < PaymentServiceInterface
  def make_payment(amount:)
    puts "Deducting #{amount} from given card"  
    puts "Deducted #{amount} from given card"  
  end
end
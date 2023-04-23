require_relative "../service/payment_service/card_service"
require_relative "../service/payment_service/upi_service"

class PaymentFactory
  MODES = {
    "UPI" => 0,
    "CARD" => 1
  }

  def self.get_payment_object(payment_mode:)
    if payment_mode = MODES["UPI"]
      UpiService.new
    elsif payment_mode = MODES["CARD"]
      CardService.new
    else
      nil
    end
  end
end
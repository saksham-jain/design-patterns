require_relative "../model/payment_factory"

class BookingService
  attr_accessor :payment_service

  def perform(seats:, payment_mode:)
    puts "Booking #{seats.map(&:seat_id).join(", ")}"
    payment_service = PaymentFactory.get_payment_object(payment_mode: payment_mode)
    total_amount = seats.map(&:cost).sum
    puts "total amount to be paid: #{total_amount}"
    payment_service.make_payment(amount: total_amount)
    puts "Booked #{seats.map(&:seat_id).join(", ")}"
  end
end
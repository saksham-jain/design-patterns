require_relative '../service/booking_service'

class User
  attr_accessor :name, :city, :booking_service

  def initialize(name:)
    @name = name
    @booking_service = BookingService.new
  end

  def select_city(city:)
    @city = city
  end

  def book_seats(seats:, payment_mode:)
    booking_service.perform(seats: seats, payment_mode: payment_mode)
  end
end
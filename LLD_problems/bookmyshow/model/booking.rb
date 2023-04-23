class Booking
  attr_accessor :user, :seats, :show, :total_cost, :payment

  def initialize(user:, seats:, show:)
    @user = user
    @seats = seat
    @show = show
    @total_cost = seats.map {|seat| seat.cost }.sum 
  end
end
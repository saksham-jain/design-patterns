class Payment
  attr_accessor :booking, :user, :mode

  def initialize(booking:, user:, mode:)
    @booking = booking
    @user = user
    @mode = mode
  end
end
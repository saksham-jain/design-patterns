class Invoice
  attr_accessor :payment, :user

  def initialize(payment:, user:)
    @payment = payment
    @user = user 
  end
end
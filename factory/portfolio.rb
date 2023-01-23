require_relative 'account'

# This is one of the product class
class Portfolio < Account 
  def transact! 
    puts "Transaction done"
  end
  
  def balance
    puts "Portfolio Account's current balance is 1 shares"
  end
end
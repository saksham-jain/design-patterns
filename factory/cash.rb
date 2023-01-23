require_relative 'account'

# This is one of the product class
class Cash < Account 
  def transact! 
    puts "Transaction done"
  end
  
  def balance
    puts "Cash Account's current balance is 100 rupees"
  end
end
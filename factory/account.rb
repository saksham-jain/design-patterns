# This is an interface. Classes which implements this will have to define all the methods present here.
class Account
  def transact!
    raise "transact! method is not implemented"
  end

  def balance
    raise "balance method is not implemented"
  end
end
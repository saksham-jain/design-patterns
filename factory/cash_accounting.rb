require_relative 'accounting'
require_relative 'cash'

# CashAccounting is a concrete subclass which inherits from Accounting
# This is called the Factory class which produces the product. Here product is Account 
class CashAccounting < Accounting

  # + create_account : Cash
  def create_account
    # Cash is a concrete class which implements Account interface
    Cash.new
  end
end
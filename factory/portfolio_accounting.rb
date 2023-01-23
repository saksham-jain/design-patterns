require_relative 'accounting'
require_relative 'portfolio'

# PortfolioAccounting is a concrete subclass which inherits from Accounting 
# This is called the Factory class which produces the product. Here product is Account 
class PortfolioAccounting < Accounting

  # + create_account : Portfolio
  def create_account
    # Portfolio is a concrete class which implements Account interface
    Portfolio.new
  end
end
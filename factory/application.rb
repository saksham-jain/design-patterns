# Application is the client app. Client doesn't care how internal Accounts are handled.
# Client passes app type(cash or portfolio) and performs operation on these accounts.
# Factory design pattern decouples object creation code with code which actually uses these objects.
# Here Accounting is Factory classes which encapsulates object creation.
# Account is Product classes. Factory produces Product based on type.

require_relative 'cash_accounting'
require_relative 'portfolio_accounting'

class Application
  attr_accessor :account
  def initialize(type:)
    if type == 'cash'
      @account = CashAccounting.new.create_account
    elsif type == 'portfolio'
      @account = PortfolioAccounting.new.create_account
    else
      puts "Wrong type given. Possible values are 'cash' and 'portfolio'"
    end
  end
end
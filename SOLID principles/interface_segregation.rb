# Interface Segregation Principle -
# code should not be forced to depend on method it doesn't use.

# RestrauntEmployee is an interface having wide variety of methods.
class RestrauntEmployee
  def wash_dish
  end

  def clean_table
  end

  def make_food
  end

  def maintain_accounts
  end
end

class Waiter < RestrauntEmployee
  # It only want clean_table method, but unnecessarily it gets other methods
end

class Cashier < RestrauntEmployee
  # same for this
end



# Interface segregated for WaiterEmployee
class WaiterEmployee
  def clean_table
  end

  def take_order
  end
end

# Interface segregated for CashierEmployee
class CashierEmployee
end

# Class waiter gets only those method it wants.
class Waiter < WaiterEmployee

end

# Class Cashier gets only those method it wants.
class Cashier < CashierEmployee

end


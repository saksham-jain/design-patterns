# Single Responsibility principle - 
# A class should hae one and only one reason to change. i.e class should have only one job to do.

# Invoice class is responsible to do 3 very different things. 
# We would need to change Invoice class when any of there 3 things change.
# It doesn't have only 1 reason to change.
class Invoice
  def calculate_total
  end

  def print_total
  end

  def store_to_db
  end
end

# Following classes have single reason to change. 
# We can say each one of them have single responsibility.
class Invoice
  def calculate_total
  end
end

class InvoicePrinter
  def print_total
  end
end

class InvoiceDao
  def store_to_db
  end
end

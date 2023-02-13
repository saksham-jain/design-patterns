# Open Close principle - 
# Software entities(classes, modules, functions, etc) should be open for extension and close for modification.

# In previous InvoiceDao class if we want to extend functionality to save to file. We added a new method in the class.
# This change is prone to error and bugs since class which is in working/tested state is changed.
class InvoiceDao
  def save_to_db
  end

  def save_to_file
  end
end

# Class should be close for modification. And open for extension.
# Interface
class InvoiceDao 
end

# Concrete class 
class InvoiceDb < InvoiceDao
  def save
    # save to DB
  end
end

class InvoiceFile < InvoiceDao
  def save
    # save to file
  end
end

# Dependency Inversion -
# A class should not be coupled with a concrete class. I should be coupled with an abstract class.

# Abstract class
class Employee
end

# Concrete class
class Designer < Employee
end

# Concrete class
class Developer < Employee
end

# Couples with concrete classes. Difficult to enhance. This code is not extensible. 
# What if new employees were introduced? We will need to change Manager class.
class Manager
  attr_accessor :employees
  def initialize
    @employees = []
  end

  # coupled with developer class
  def add_developer(developer)
    @employees << developer
  end

  # coupled with designer class
  def add_designer(designer)
    @employees << designer
  end
end

# Follows dependency inversion. Extensible code. 
class Manager
  attr_accessor :employees

  def initialize
    @employees = []
  end

  #coupled with employee abstract class
  def add_employee(employee)
    @employees << employee
  end
end


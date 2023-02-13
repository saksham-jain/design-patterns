# Liskov substitution principle - 
# If Class B is subclass of Class A. Then we should be replace object of A with B
# without breaking the code(output can change but code should not break).
# *Note - Subclass should always extend the capability of parent class and not narrow it down.

# Class B is subclass of A. Here. Class B narrows down the functionality.
# Because of this Class B object cannot replace class A object. 
class A
  def do_something_1
  end

  def do_something_2
  end
end

class B < A
  def do_something_1
  end

  def do_something_2
    # Object of class B isn't allowed to call do_something_2
    raise 'Error'
  end
end

# Example 
# In following example object of Cycle cannot replace object of Bike in the code.
class Bike
  def turn_on_engine
  end

  def accelerate
  end
end

class Activa < Bike
  def turn_on_engine
    puts 'Engine turned on'
  end

  def accelerate
    speed += 15
  end
end

class Cycle < Bike
  def turn_on_engine
    raise 'Cycle does not have engine'
  end
  
  def accelerate
    speed += 5
  end
end
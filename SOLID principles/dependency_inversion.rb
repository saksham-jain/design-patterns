# Dependency Injection -
# When object or functions receive other objects it depends on.

# Interface
class Keyboard
end

# Concrete class
class WiredKeyboard < Keyboard
end

# Interface
class Mouse
end

# Concrete class
class WiredMouse < Mouse
end


# Couples with concrete classes. Difficult to enhance.
class Macbook1
  attr_reader :keyboard, :mouse

  def initialize
    @keyboard = WiredKeyboard.new
    @mouse = WiredMouse.new  
  end
end

# Follows dependency inversion. Extensible code. In future if Macbook has wireless mouse and keyboard, 
# We just need to pass those object while initialization.
class Mackbook2
  attr_reader :keyboard, :mouse

  def initialize(keyboard, mouse)
    # In Java type of keyboard and mouse should be interface and not concrete class.
    @keyboard = keyboard
    @mouse = mouse
  end
end


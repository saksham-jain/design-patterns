# Invoker interface
class Invoker
  attr_reader :command
  
  def set_command(command)
    raise NotImplementedError, "#{self.class} doesn't implement #{__method__}"
  end

  def execute_command
    raise NotImplementedError, "#{self.class} doesn't implement #{__method__}"
  end
end
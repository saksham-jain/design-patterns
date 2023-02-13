# Comamand interface
class Comamand
  attr_reader :receiver

  def execute
    raise NotImplementedError, "#{self.class} doesn't implement #{__method__}"
  end
end
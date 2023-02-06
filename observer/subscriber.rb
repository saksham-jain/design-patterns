# Subscriber Interface
class Subscriber
  def update
    raise NotImplementedError, "#{self.class} doesn't implement #{__method__}"
  end
end
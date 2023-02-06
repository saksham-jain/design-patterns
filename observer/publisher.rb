# Publisher interface
class Publisher
  def subscribe(subscriber:)
    raise NotImplementedError "#{self.class} doesn't implement #{__method__}"
  end

  def unsubscribe(subscriber:)
    raise NotImplementedError "#{self.class} doesn't implement #{__method__}"
  end
  
  def notify
    raise NotImplementedError "#{self.class} doesn't implement #{__method__}"
  end
end

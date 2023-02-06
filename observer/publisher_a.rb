class Publisher
  attr_accessor :subscribers, :state

  def initialize
    @subscribers = []
    @state = nil
  end
  
  def subscribe(subscriber:)
    @subscribers << subscriber
  end

  def unsubscribe(subscriber:)
    @subscribers.delete(subscriber)
  end
  
  def notify
    @subscribers.each do |subscriber|
      subscriber.update(publisher: self)
    end
  end
end
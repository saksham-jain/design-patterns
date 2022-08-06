=begin
- publisher also called as subject
- publish has a list of subscribers
- publisher publishes a change and all subscriber are notified of this change
=end

require 'securerandom'

class Publisher
  attr_reader :uuid, :name
  attr_accessor :subscribers

  def initialize(name:)
    @uuid = SecureRandom.uuid
    @name = name
    @subscribers = []
  end
  
  def subscribe(subscriber:)
    self.subscribers << subscriber
  end

  def unsubscribe(subscriber:)
    self.subscribers.reject! { |s| s.uuid == subscriber.uuid }
  end

  #notify list of subscribers
  def notify(message:)
    self.subscribers.each do |subscriber|
      subscriber.notify(message: message)
    end

    puts "Notified all subscribers of #{self.name}\n\n"
  end
end
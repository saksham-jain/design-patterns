require_relative 'subscriber'

class SubscriberB < Subscriber
  def update(publisher:)
    puts "state changed to #{publisher.state}"
  end
end
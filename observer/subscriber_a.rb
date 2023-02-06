require_relative 'subscriber'

class SubscriberA < Subscriber
  def update(publisher:)
    puts "state changed to #{publisher.state}"
  end
end
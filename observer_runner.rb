require_relative 'observer/publisher_a'
require_relative 'observer/subscriber_a'
require_relative 'observer/subscriber_b'

publisher = Publisher.new
subscriber_a_1 = SubscriberA.new
publisher.subscribe(subscriber: subscriber_a_1)
publisher.notify
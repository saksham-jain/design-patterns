=begin
- subscriber also called as observer
- subscriber can subscribe/unsubscribe to publisher
- subscriber has list of publisher
- when any publisher publishes, subscriber is notified
=end

require 'securerandom'

class Subscriber
  attr_reader :uuid, :name
  attr_accessor :publishers
  
  def initialize(name:)
    @uuid = SecureRandom.uuid
    @name = name
    @publishers = []
  end

  def subscribe(publisher:)
    self.publishers << publisher
    publisher.subscribe(subscriber: self)
    puts "#{self.name} subscribed to #{publisher.name}"
  end

  def unsubscribe(publisher:)
    self.publishers.reject! { |p| p.uuid ==  publisher.uuid }
    publisher.unsubscribe(subscriber: self)
    puts "#{self.name} unsubscribed to #{publisher.name}"
  end

  def notify(message:)
    puts "#{self.name} receives a message: #{message}"
  end
end
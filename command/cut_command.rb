require_relative 'command'

class CutCommand < Comamand
  def initialize(receiver)
    @receiver = receiver 
  end

  def execute
    puts "execute cut command on receiver"
    receiver.perform
  end
end
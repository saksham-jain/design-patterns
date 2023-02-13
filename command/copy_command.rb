require_relative 'command'

class CopyCommand < Comamand
  def initialize(receiver)
    @receiver = receiver 
  end

  def execute
    puts "execute copy command on receiver"
    receiver.perform
  end
end
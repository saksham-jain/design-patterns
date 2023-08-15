require_relative "i_command"

class Copy < ICommand
  attr_accessor :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.copy_content
  end

  def unexecute
    @receiver.uncopy_content
  end
end

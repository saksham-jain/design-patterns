require_relative "i_command"

class Cut < ICommand
  attr_accessor :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.cut_content
  end

  def unexecute
    @receiver.uncut_content
  end
end

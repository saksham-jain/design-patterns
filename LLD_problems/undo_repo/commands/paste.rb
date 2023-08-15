require_relative "i_command"

class Paste < ICommand
  attr_accessor :receiver

  def initialize(receiver)
    @receiver = receiver
  end

  def execute
    @receiver.paste_content
  end

  def unexecute
    @receiver.unpaste_content
  end
end

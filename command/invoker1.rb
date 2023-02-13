require_relative 'invoker'

class Invoker1 < Invoker
  def set_command(command)
    @command = command
  end

  def execute_command
    command.execute
  end
end
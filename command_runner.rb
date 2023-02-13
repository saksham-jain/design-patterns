require_relative 'command/receiver'
require_relative 'command/invoker1'
require_relative 'command/invoker2'
require_relative 'command/copy_command'
require_relative 'command/cut_command'

receiver = Receiver.new

copy_command = CopyCommand.new(receiver)
cut_command = CutCommand.new(receiver)

invoker1 = Invoker1.new
invoker1.set_command(copy_command)
puts invoker1.inspect

invoker2 = Invoker2.new
invoker2.set_command(cut_command)
puts invoker2.inspect

invoker1.execute_command
invoker2.execute_command
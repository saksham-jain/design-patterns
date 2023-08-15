require_relative "invoker/i_toolbar"
require_relative "invoker/toolbar"
require_relative "commands/copy"
require_relative "commands/cut"
require_relative "commands/paste"
require_relative "receiver/document"
require_relative "command_list"

document = Document.new("Document #1")
puts document.inspect

copy_command = Copy.new(document)
cut_command = Cut.new(document)
paste_command = Paste.new(document)

puts copy_command.inspect
puts cut_command.inspect
puts paste_command.inspect

command_list = CommandList.new

toolbar = Toolbar.new(copy_command, cut_command, paste_command, command_list)
puts toolbar.inspect


toolbar.press_cut
toolbar.press_paste
toolbar.press_copy
toolbar.press_paste

toolbar.undo
toolbar.undo
toolbar.redo
toolbar.undo


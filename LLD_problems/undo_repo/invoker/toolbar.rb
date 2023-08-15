require_relative "i_toolbar"

class Toolbar < IInvoker
  attr_accessor :copy_command, :paste_command, :cut_command, :command_list

  def initialize(copy_command, cut_command, paste_command, command_list)
    @copy_command = copy_command
    @cut_command = cut_command
    @paste_command = paste_command
    @command_list = command_list
  end

  def press_copy
    copy_command.execute
    command_list.add(copy_command)
  end

  def press_cut
    cut_command.execute
    command_list.add(cut_command)
  end

  def press_paste
    paste_command.execute
    command_list.add(paste_command)
  end

  def undo
    command_list.current_pointer.val.unexecute  
    command_list.current_pointer = command_list.current_pointer.left
  end

  def redo
    command_list.current_pointer = command_list.current_pointer.right
    command_list.current_pointer.val.execute
  end
end

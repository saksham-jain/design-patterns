require_relative "command_node"

class CommandList
  attr_accessor :current_pointer

  def initialize
    @current_pointer = get_new_node #dummy node
  end

  def add(command)
    new_node = get_new_node(command, @current_pointer, nil)
    @current_pointer.right = new_node
    @current_pointer = current_pointer.right
  end

  private

  def get_new_node(val=nil, left=nil, right=nil)
    CommandNode.new(val=val, left=left, right=right)
  end
end

class CommandNode
  attr_accessor :val, :left, :right

  def initialize(val, left, right)
    @val = val
    @left = left
    @right = right
  end
end

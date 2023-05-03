class Node
  attr_accessor :key, :value, :nxt

  def initialize(key:, value:, nxt: nil)
    @key = key
    @value = value
  end
end
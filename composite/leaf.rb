require_relative "i_component"

class Leaf < IComponent
  def initialize(value)
    @value = value
  end

  # base condition of recursion
  def request
    "#{value} "
  end
end
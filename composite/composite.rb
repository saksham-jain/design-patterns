require_relative "i_component"

class Composite < IComponent
  attr_accessor :components

  def initialize(value)
    @components = []
    @value = value
  end

  def add_component(component)
    @components << component
  end

  def request
    str = "#{value} + " 
    components.each do |c|
      str += "#{c.request}"
    end
    str
  end
end
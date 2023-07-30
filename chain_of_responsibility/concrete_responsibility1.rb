require_relative "i_responsibility"

class ConcreteReponsibility1 < IResponsibility
  def initialize(nxt=nil)
    @nxt = nxt
  end

  def perform
    puts "Perform #{self.class.name}"
    super
  end
end
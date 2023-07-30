require_relative "i_responsibility"

class ConcreteReponsibility2 < IResponsibility
  def initialize(nxt=nil)
    @nxt = nxt
  end

  def perform
    puts "Perform #{self.class.name}"
    super
  end
end
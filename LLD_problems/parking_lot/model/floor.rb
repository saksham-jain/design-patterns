class Floor
  attr_reader :id
  attr_accessor :slots

  def initialize(id)
    @id = id
    @slots = []
  end

  def add_slots(slots)
    @slots += slots
  end
end
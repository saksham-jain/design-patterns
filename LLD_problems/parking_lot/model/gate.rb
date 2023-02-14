class Gate
  attr_reader :id
  attr_accessor :slot_strategy

  def initialize(id, slot_strategy)
    @id = id
    @slot_strategy = slot_strategy
  end

  def get_slot(vehicle)
    slot_strategy.execute(self, vehicle)
  end
end
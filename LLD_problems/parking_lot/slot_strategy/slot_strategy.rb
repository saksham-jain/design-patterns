class SlotStrategy
  attr_reader :parking_lot

  def initialize(parking_lot)
    @parking_lot = parking_lot
  end

  def execute(gate, vehicle)
    raise "#{__method__} is not implemented by #{self.class}"
  end
end
class ParkingLot
  attr_reader :id
  attr_accessor :floors, :gates

  def initialize(id)
    @id = id
    @floors = []
    @gates = []
  end

  def add_gates(gates)
    @gates += gates
  end

  def add_floors(floors)
    @floors += floors
  end

  def get_slot(gate, vehicle)
    gate.get_slot(vehicle)
  end
end
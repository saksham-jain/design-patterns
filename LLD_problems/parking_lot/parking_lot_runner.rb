require_relative "model/parking_lot"
require_relative "model/gate"
require_relative "model/floor"
require_relative "model/vehicle"
require_relative "model/slot/four_wheeler"
require_relative "model/slot/two_wheeler"
require_relative "slot_strategy/default_strategy"

parking_lot = ParkingLot.new(1)
puts parking_lot.inspect

slot_strategy = DefaultStrategy.new(parking_lot)
puts slot_strategy.inspect

gate1 = Gate.new(1, slot_strategy)
puts gate1.inspect

floor1 = Floor.new(1)
puts floor1.inspect

two_wheeler_slot1 = TwoWheeler.new(1)
puts two_wheeler_slot1.inspect

four_wheeler_slot1 = FourWheeler.new(2)
puts four_wheeler_slot1.inspect

floor1.add_slots([two_wheeler_slot1, four_wheeler_slot1])
parking_lot.add_gates([gate1])
parking_lot.add_floors([floor1])

puts parking_lot.inspect


two_wheeler_vehicle1 = Vehicle.new(1, "TwoWheeler")
puts two_wheeler_vehicle1.inspect

four_wheeler_vehicle1 = Vehicle.new(1, "FourWheeler")
puts four_wheeler_vehicle1.inspect


slot = parking_lot.get_slot(gate1, two_wheeler_vehicle1)
slot.occupy(two_wheeler_vehicle1)

puts slot.inspect


# TODO
# - add ticket, invoice, payment
# - Use enum
# - add controller 
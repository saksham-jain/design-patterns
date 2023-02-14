require_relative "slot_strategy"

class DefaultStrategy < SlotStrategy
  def execute(gate, vehicle)
    floors = parking_lot.floors

    floors.each do |floor|
      floor.slots.each do |slot|
        return slot if slot.is_free? && slot.class.name == vehicle.type 
      end
    end
  end
end
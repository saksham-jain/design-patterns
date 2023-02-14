# Slot abstract class
class Slot
  attr_reader :id
  attr_accessor :vehicle

  def initialize(id)
    @id = id
  end

  def is_free?
    vehicle == nil
  end

  def occupy(vehicle)
    if is_free?
      @vehicle = vehicle
      puts "Slot #{id} occupied by #{vehicle.id}"
    else
      puts "Can't occupy already occupied slot"
    end
  end

  def unoccupy
    if is_free?
      puts "Can't unoccupy. Slot isn't occupied yet"
    else
      @vehicle = nil
      puts "Unoccupied Slot #{id}"
    end
  end

  def cost
    raise "#{__method__} not defined in #{self.class}"
  end
end
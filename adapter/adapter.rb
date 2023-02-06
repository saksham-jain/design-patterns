require_relative 'two_pin_charger'

# This Apdapter converts TwoPinCharger to ThreePinCharger
# This class hides all the complexities involved in conversion
class Adapter < TwoPinCharger
  attr_reader :charger

  def initialize(charger)
    @charger = charger
  end

  def charge
    puts "Converts two pin to three pin"
    charger.charge
  end
end
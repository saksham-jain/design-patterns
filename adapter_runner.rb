require_relative 'adapter/mobile'
require_relative 'adapter/adapter'
require_relative 'adapter/two_pin_charger'
require_relative 'adapter/three_pin_charger'

mobile = Mobile.new

charger = TwoPinCharger.new
mobile.plug_in_charger(charger)

adapter = Adapter.new(ThreePinCharger.new)
mobile.plug_in_charger(adapter)



# another example can be -> client receives JSON data. But some external service accepts XML data. 
# client will have to convert JSON to XML before using external service. 
# Adapter can be created for this conversion.
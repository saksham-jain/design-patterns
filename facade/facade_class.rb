# class to interact with complex subsystem. 
#Client only need to interact with this class's object.

require_relative "sub_system_class1"
require_relative "sub_system_class2"
require_relative "sub_system_class3"

class FacadeClass
  @subsystem_class1
  @subsystem_class2
  @subsystem_class3

  def initialize
    @subsystem_class1 = SubSystemClass1.new
    @subsystem_class2 = SubSystemClass2.new
    @subsystem_class3 = SubSystemClass3.new
  end
  
  def do_complex_operation
    puts "doing complex opearation invloving muliple sublasses"
    @subsystem_class1.do_this
    @subsystem_class2.do_that
    @subsystem_class3.do_something_else
  end
end
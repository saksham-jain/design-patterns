require_relative "concrete_responsibility1"
require_relative "concrete_responsibility2"

responsibility_chain = ConcreteReponsibility1.new(ConcreteReponsibility2.new)

responsibility_chain.perform
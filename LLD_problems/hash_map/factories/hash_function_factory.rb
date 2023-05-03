require_relative "../model/hash_function/modulo"

class HashFunctionFactory
  def self.get_object(type: :modulo, table:)
    if type == :modulo
      Modulo.new(table: table)
    end
  end
end
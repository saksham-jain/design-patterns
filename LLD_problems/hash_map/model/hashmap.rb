require_relative "table"

class Hashmap
  attr_reader :table

  def initialize(size: default_size)
    @table = Table.new(size: size)
  end

  def put(key, value)
    table.insert(key, value)
  end

  private

  def default_size
    2
  end
end
require_relative "hash_function_interface"

class Modulo < HashFunctionInterface
  attr_reader :table

  def initialize(table:)
    @table = table
  end

  def get_bucket(key:)
    number = key % table.buckets.count
    table.buckets.select do |bucket|
      bucket.number == number
    end.first
  end
end
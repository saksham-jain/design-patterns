require_relative "../factories/hash_function_factory"
require_relative "bucket"

class Table
  attr_accessor :buckets, :hash_function

  def initialize(size:)
    @buckets = []
    size.times { |n| @buckets << Bucket.new(number: n) }
    @hash_function = HashFunctionFactory.get_object(type: :modulo, table: self)
  end

  def insert(key, value)
    bucket = hash_function.get_bucket(key: key)
    bucket.insert(key, value)
  end
end
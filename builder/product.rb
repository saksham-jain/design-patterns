class Product
  attr_accessor :parts

  def initialize
    @parts = []
  end

  def add(part)
    @parts << part
  end

  def list_parts
    puts @parts.inspect
  end
end
class Vehicle
  attr_reader :id, :type

  def initialize(id, type)
    @id = id
    @type = type
  end
end
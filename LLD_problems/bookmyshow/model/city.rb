class City
  attr_reader :name, :pincode, :theatres
  
  def initialize(name:, pincode:)
    @name = name
    @pincode = pincode
    @theatres = []
  end

  def add_theatre(theatre:)
    @theatres << theatre
  end

  def list_theatres
    puts "THEATRES IN #{self.name}: #{theatres.map(&:name).join(", ")}"
    theatres
  end
end
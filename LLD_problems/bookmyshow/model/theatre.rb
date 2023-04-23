class Theatre
  attr_accessor :name, :city, :address, :screens

  def self.new(name:, city:, address:)
    obj = super
    city.add_theatre(theatre: obj)
    obj
  end
  
  def initialize(name:, city:, address:)
    @name = name
    @city = city
    @address = address
    @screens = []
  end

  def add_screen(screen:)
    @screens << screen
  end

  def list_shows
    shows = []
    screens.each do |screen|
      shows += screen.shows
    end
    # puts "SHOWS: #{shows.map(&:movie).join(", ")}"
    shows
  end
end
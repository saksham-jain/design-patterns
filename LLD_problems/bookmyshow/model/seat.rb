class Seat
  CATEGORY = {
    "NORMAL" => 0,
    "RECLINER" => 1
  }

  attr_accessor :seat_id, :occupied, :cost, :screen, :category

  def self.new(seat_id:, screen:, cost:, category:)
    obj = super
    screen.add_seat(seat: obj)
    obj
  end

  def initialize(seat_id:, screen:, cost:, category:)
    @seat_id = seat_id
    @screen = screen
    @cost = cost
    @category = category
    @occupied = false
  end

  def self.bulk_creation(category_split:)
    seats = []
    category_split.each do |category, count|
      count.times { }
    end
    Seat.new
  end
end
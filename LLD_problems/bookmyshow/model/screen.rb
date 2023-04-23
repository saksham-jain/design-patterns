class Screen
  CATEGORY = {
    "BUDGET" => 0,
    "PREMIUM" => 1
  }
  attr_accessor :screen_id, :seats, :shows, :category

  def self.new(screen_id:, theatre:, category:)
    obj = super
    theatre.add_screen(screen: obj)
    obj
  end

  def initialize(screen_id:, theatre:, category:)
    @screen_id = screen_id
    @category = category
    @theatre = theatre
    @seats = []
    @shows = []
  end

  def add_show(show:)
    @shows << show
  end

  def add_seat(seat:)
    @seats << seat
  end

  def list_seats
    puts "SEATS: #{seats.map(&:seat_id).join(", ")}"
    seats
  end
end
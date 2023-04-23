class Show
  attr_accessor :movie, :screen, :time, :booked_seats

  def self.new(movie:, screen:, time:)
    obj = super
    screen.add_show(show: obj)
    obj
  end

  def initialize(movie:, screen:, time:)
    @movie = movie
    @screen = screen
    @time = time
    @booked_seats = []
  end
end
class Board
  attr_reader :cells, :snakes, :ladders

  def initialize(cells, snakes, ladders)
    @cells = cells
    @snakes = snakes
    @ladders = ladders 
  end
end
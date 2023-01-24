require_relative 'strategy'

class FourWheelerStrategy < Strategy
  def execute(point_a, point_b)
    puts "Follow this four wheeler route A -> u -> v -> w -> x -> B"
  end
end
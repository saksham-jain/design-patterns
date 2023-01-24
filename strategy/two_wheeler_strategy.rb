require_relative 'strategy'

class TwoWheelerStrategy < Strategy
  def execute(point_a, point_b)
    puts "Follow this two wheeler route A -> z -> x -> c -> v -> b -> B"
  end
end
require_relative 'strategy'

class FootStrategy < Strategy
  def execute(point_a, point_b)
    puts "Follow this foot route A -> x -> y -> z -> B"
  end
end
require_relative 'strategy'

# here Navigator won't change when any new strategy is introduced.
class Navigator
  attr_accessor :route_strategy

  def initialize(route_strategy:)
    @route_strategy = route_strategy
  end

  def get_route(point_a, point_b)
    @route_strategy.execute(point_a, point_b)
  end
end
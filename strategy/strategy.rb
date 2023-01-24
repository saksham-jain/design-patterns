# this is an interface. 
class Strategy
  def execute(point_a, point_b)
    raise "get_route not implemented for the strategy"
  end
end
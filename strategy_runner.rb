require_relative 'strategy/navigator'
require_relative 'strategy/foot_strategy'
require_relative 'strategy/two_wheeler_strategy'
require_relative 'strategy/four_wheeler_strategy'

foot_strategy = FootStrategy.new
navigator = Navigator.new(route_strategy: foot_strategy)
puts navigator.get_route(1,2)

two_wheeler_strategy = TwoWheelerStrategy.new
navigator.route_strategy = two_wheeler_strategy
puts navigator.get_route(1,2)

four_wheeler_strategy = FourWheelerStrategy.new
navigator.route_strategy = four_wheeler_strategy
puts navigator.get_route(1,2)


# Here we see, to use different routing strategy we don't have to change navigator class. 
# If this is implemented using inheritance where Navigator is superclass and TwoWheelerNavigator, FourWheelerNavigator, FootNavigator are subclass
# Strategy design pattern replaces use of inheritance with composition.

# consider we get more and more other strategies like fare calculator, live speed tracker, etc. Implementing this with inheritance we will have to hard code everything.
# But with strategy pattern we just need to create strategies and pass it to the navigator.
require_relative "../factories/collision_avoidance_factory"

class Bucket
  attr_reader :number, :collision_avoidance_agent

  def initialize(number:)
    @number = number
    @collision_avoidance_agent = CollisionAvoidanceFactory.get_object(type: :linked_list)
  end

  def insert(key, value)
    collision_avoidance_agent.insert_and_avoid_collision(key, value)
  end
end
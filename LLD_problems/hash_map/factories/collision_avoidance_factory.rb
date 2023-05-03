require_relative "../model/collision_avoidance/linked_list"

class CollisionAvoidanceFactory
  def self.get_object(type: :linked_list)
    if type == :linked_list
      LinkedList.new
    end
  end
end
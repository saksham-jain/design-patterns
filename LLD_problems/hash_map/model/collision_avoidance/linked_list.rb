require_relative "collision_avoidance_interface"
require_relative "../node"

class LinkedList < CollisionAvoidanceInterface
  attr_accessor :head

  def initialize  
    @head = nil
  end

  def insert_and_avoid_collision(key, value)
    if @head == nil
      @head = Node.new(key: key, value: value)
    else
      cur = @head
      while(cur.nxt != nil && cur.key != key)
        cur = cur.nxt
      end

      if cur.key == key
        cur.value = value
      else
        cur.nxt = Node.new(key: key, value: value)
      end
    end
  end
end
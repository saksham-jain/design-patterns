# Interface
class BasePizza
  def cost
    raise NotImplementedError "#{self.class} doesn't implement #{__method__}"
  end
end
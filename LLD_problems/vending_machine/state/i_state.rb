class IState
  attr_accessor :context

  def set_context(context)
    @context = context
  end

  def click_order_button
    raise ""
  end

  def select_product_and_quantity
    raise ""
  end
end
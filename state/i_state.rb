class IState
  attr_accessor :context

  def set_context(context)
    @context = context
  end

  def do_something
    raise ""
  end

  def do_something_else
    raise ""
  end
end
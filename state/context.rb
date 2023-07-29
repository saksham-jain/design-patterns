class Context
  attr_accessor :state
  
  def initialize(state)
    @state = state
  end

  def change_state(state)
    @state = state
    state.set_context(self)
  end

  def do_something
    state.do_something
  end

  def do_something_else
    state.do_something_else
  end
end
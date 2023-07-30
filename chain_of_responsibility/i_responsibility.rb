class IResponsibility
  attr_accessor :nxt

  def perform
    @nxt.perform if @nxt
  end
end
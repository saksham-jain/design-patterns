# Abstract class
class Logger
  TYPES = {
    'DEBUG' => 0,
    'INFO' => 1,
    'ERROR' => 2
  }
  attr_accessor :nxt

  def log(type, message)
    nxt.log(type, message) if nxt
  end
end
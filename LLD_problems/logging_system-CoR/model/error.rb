require_relative 'logger'

class Error < Logger
  def initialize(nxt)
    @nxt = nxt
  end

  def log(type, message)
    puts "ERROR LOG: #{message}" if type >= Logger::TYPES["ERROR"]
    super
  end
end
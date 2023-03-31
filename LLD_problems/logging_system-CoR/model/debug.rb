require_relative 'logger'

class Debug < Logger
  def initialize(nxt)
    @nxt = nxt
  end

  def log(type, message)
    puts "DEBUG LOG: #{message}" if type >= Logger::TYPES["DEBUG"]
    super
  end
end
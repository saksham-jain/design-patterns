require_relative 'logger'

class Info < Logger
  def initialize(nxt)
    @nxt = nxt
  end

  def log(type, message)
    puts "INFO LOG: #{message}" if type >= Logger::TYPES["INFO"]
    super
  end
end
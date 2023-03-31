# Considering log levels
# Debug => Info => Error

require_relative 'model/logger'
require_relative 'model/debug'
require_relative 'model/info'
require_relative 'model/error'
logger = Debug.new(Info.new(Error.new(nil)))

logger.log(Logger::TYPES['ERROR'], "Some error occurred!") # Print in all
logger.log(Logger::TYPES['INFO'], "Useful info") # Print in Info and Error
logger.log(Logger::TYPES['DEBUG'], "Debug log") # Print only in debug



# Chain of responsibility applications -> Logger, vending machine, ATM
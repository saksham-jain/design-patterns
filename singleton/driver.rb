require_relative "singleton_class"

object = SingletonClass.get_instance
puts object.inspect
object.do_something

object = SingletonClass.get_instance
puts object.inspect
object.do_something
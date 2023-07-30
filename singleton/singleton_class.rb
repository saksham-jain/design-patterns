class SingletonClass
  class << self
    def get_instance 
      if @instance != nil
        puts "instance already exist"
        @instance
      else
        puts "initializing new instance"
        @instance = self.new
      end
    end

    private
    @instance
    def new
      super
    end
  end

  def do_something
    puts "doing something"
  end
end
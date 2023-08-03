require 'thread'
puts "\nUsing script"
# Shared resource
counter = 0
mutex = Mutex.new

def increment_counter(mutex, counter)
  mutex.synchronize do
    counter += 1
  end
end 

threads = []
10.times do
  threads << Thread.new { counter = increment_counter(mutex, counter) }
end

threads.each(&:join)
puts "Final value of counter: #{counter}"



puts "\nUsing class"

require 'thread'

class ExampleClass
  attr_accessor :counter

  def initialize
    @mutex = Mutex.new
    @counter = 0
  end

  def auto_increment_id
    @mutex.synchronize do
      @counter += 1
      puts @counter
    end
  end
end


obj = ExampleClass.new

threads = []
10.times do
  threads << Thread.new { obj.auto_increment_id }
end

threads.each(&:join)

puts "Final counter value: #{obj.counter}"





# Lock: A general term for a synchronization mechanism used to control access to shared resources in concurrent programming.

# Mutex (Mutual Exclusion): Ensures mutual exclusion, allowing only one thread to access a shared resource at a time.
# Eg. Auto increment counter

# Semaphore: Allows a fixed number of threads to access a shared resource concurrently, within specified limits.
# Eg. Parking lot with 100 parkings. If semaphore counter is <100 then new car will be allowed, if counter >=100 then new
# car won't be allowed.

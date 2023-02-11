require_relative 'proxy/proxy'
require_relative 'proxy/real_subject'

# Immediate initialization. 
real_subject = RealSubject.new((1..9).to_a)
puts real_subject.get_content_size
puts real_subject.get_content_pages


puts "\n with proxy"
# Lazy initialization with Proxy
proxy = Proxy.new((1..9).to_a)
puts proxy.get_content_size # -> RealSubject will be initialized here. 
puts proxy.get_content_pages



# This is called virtual proxy where Real object are initialized lazily when it is actually required.
# Proxy can be used for access control, logging, caching, etc
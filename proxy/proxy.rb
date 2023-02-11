require_relative 'subject'
require_relative 'real_subject'

# Proxy and RealSubject shares common interface
# Proxy is used to Lazily initialize RealSubject object
class Proxy < Subject
  attr_reader :data
  attr_accessor :real_subject

  def initialize(data)
    @data = data
  end

  def get_content_size
    if real_subject == nil
      real_subject = RealSubject.new(data)
    end

    real_subject.get_content_size
  end

  def get_content_pages
    if real_subject == nil
      real_subject = RealSubject.new(data)
    end
    
    real_subject.get_content_pages
  end
end
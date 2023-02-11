require_relative 'subject'

# Real Subject implements Subject interface
class RealSubject < Subject
  def initialize(data)
    # Consider initialization is time consuming.
    sleep 2
    @content = data
  end

  def get_content_size
    content.size
  end

  def get_content_pages
    content.size/3
  end
end
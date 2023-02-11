# Subject interface
class Subject
  attr_reader :content

  def get_content_size
    raise NotImplementedError "#{self.class} doesn't implement #{__method__}"
  end

  def get_content_pages
    raise NotImplementedError "#{self.class} doesn't implement #{__method__}"
  end
end
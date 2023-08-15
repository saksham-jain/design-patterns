require_relative "i_document"

class Document < IDocument
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def copy_content
    puts "Copying content for #{self.name}"
  end

  def cut_content
    puts "Cut content for #{self.name}"
  end

  def paste_content
    puts "Pasting content for #{self.name}"
  end

  def uncopy_content
    puts "Uncopying content for #{self.name}"
  end

  def uncut_content
    puts "Uncut content for #{self.name}"
  end

  def unpaste_content
    puts "Unpasting content for #{self.name}"
  end
end

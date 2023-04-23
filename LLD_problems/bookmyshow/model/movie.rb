class Movie
  attr_accessor :name, :duration, :language

  def initialize(name:, duration:, language:)
    @name = name
    @duration = duration
    @language = language
  end
end
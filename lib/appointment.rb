class Appointments
  attr_accessor :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


end

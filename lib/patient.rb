class Patient
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    self.patient = self
  end

  def doctors

  end

  def appointments

  end


end

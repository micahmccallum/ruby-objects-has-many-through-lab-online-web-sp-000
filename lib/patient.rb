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

  end

  def doctors
    patient_doctors = []
    self.appointments.each do |appointment|
      patient_doctors << appointment.doctor unless patient_doctors.include?(appointment.doctor)
    end
    patient_doctors
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end
end

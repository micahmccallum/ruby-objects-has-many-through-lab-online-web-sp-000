require 'pry'
class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    doctor_patients = []
    binding.pry
    self.appointments.each do |appointment|
      doctor_patients << appointment.patient unless doctor_patients.include?(appointment.patient)
    end
    doctor_patients

  end
end

require "pry"

class Doctor
  
  attr_reader :name
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_appointment (date, patient)
    new_appointment = Appointment.new(date, patient, self)
    new_appointment.doctor = self
    new_appointment
  end
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self 
    end
  end
  
  
  def patients
    appointments.collect do |element|
      element.patient
      binding.pry
    end
  end
  
end
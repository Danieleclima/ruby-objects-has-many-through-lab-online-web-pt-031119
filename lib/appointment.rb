require "pry"

class Appointment
  
  attr_reader :date 
  attr_accessor :doctor, :patient
  @@all = []
  
  def initialize (patient, doctor)
    @date = date 
    @patient = patient
    @doctor = doctor
    @@all << self
    binding.pry
  end
  
  def self.all 
    @@all 
  end
  
end
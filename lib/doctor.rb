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
  end
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self 
    end
  end
  
  
  def patients
    appointments.all.select do |element|
      element.doctor
    end
  end
  
end
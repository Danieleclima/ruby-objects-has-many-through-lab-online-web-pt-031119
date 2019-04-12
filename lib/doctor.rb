class Doctor
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
  
  def patients
    Appointment.all.select do |appointments|
      appointments.doctor == self
      binding.pry
    end
  end
  
end
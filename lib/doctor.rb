class Doctor
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_appointment (patient, date)
    new_appointment = Appointment.new (patient, date)
    new_appointment.doctor = self
  end
  
  def patients
    Appointment.all.select do |appointments|
      appointments
  end
  
end
class Patient
  
  attr_reader :name
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def new_appointment (doctor, date)
    new_appointment = Appointment.new(self, date, doctor)
    new_appointment.patient = self
    new_appointment
  end
  
   def appointments
    Appointment.all.select do |appointments|
      appointments.patient == self 
    end
  end
  
  def self.all
    @@all
  end
  
   def doctors
    appointments.collect do |element|
      element.doctor
    end
  end
  
end
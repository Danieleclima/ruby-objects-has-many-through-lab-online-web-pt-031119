class Patient
  
  attr_reader :name
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def new_appointment
  end
  
  def self.all
    @@all
  end
end
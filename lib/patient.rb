class Patient

  attr_accessor :appointments, :doctors, :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @appointments.last.patient = self
    @appointments.last.doctor.patients << self
    doctors << @appointments.last.doctor 
  end

end

class Doctor
  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    self.appointments << appointment
  end

  def patients
    patients = []
    self.appointments.each {|appointment| patients << appointment.patient}
    patients
  end


end

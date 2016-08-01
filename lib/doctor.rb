class Doctor
  attr_reader :name, :appointments, :patient

  def initialize(name)
    @appointments = []
    @name = name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  #has many through
  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end

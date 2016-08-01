class Patient
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    #tells that appointment it belongs to the patient
    appointment.patient = self
  end

  #has many doctors through appointments
  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end

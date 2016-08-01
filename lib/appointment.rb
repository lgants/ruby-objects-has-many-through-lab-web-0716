class Appointment
attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    #note: not @doctor = doctor
    #needed for appointment belongs to a doctor
    doctor.add_appointment(self)
  end
end

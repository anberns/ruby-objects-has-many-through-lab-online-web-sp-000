class Doctor 
  
  attr_accessor :name 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  @@all = [] 
  
  def self.all
    @@all 
  end 

  def new_appointment(patient, date)
    Appointment.new(


  describe '#new_appointment' do
    it 'given a date and a patient, creates a new appointment' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      expect(doctor_who.appointments).to include(appointment)
      expect(appointment.doctor).to eq(doctor_who)
    end
  end

  describe '#appointments' do
    it 'has many appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      appointment = doctor_who.new_appointment(hevydevy, 'Saturday, January 33rd')
      doctor_who.new_appointment(hevydevy, 'Rootenskadootenday, January 315th')
      expect(doctor_who.appointments).to include(appointment)
    end
  end

  describe '#patients' do
    it 'has many patients, through appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')

      expect(doctor_who.patients).to include(hevydevy)
    end
  end
end
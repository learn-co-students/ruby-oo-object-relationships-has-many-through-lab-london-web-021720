class Doctor
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(name, date)
        Appointment.new(date, name, self)
    end

    def appointments
        Appointment.all.select{ |appointment| appointment.doctor == self}
    end

    def patients
        # Iterates through all the appointments and finds the genre of each one
        appointment = self.appointments
        appointment.map{ |appointment| appointment.patient }
    end

    def self.all
        @@all
    end
end
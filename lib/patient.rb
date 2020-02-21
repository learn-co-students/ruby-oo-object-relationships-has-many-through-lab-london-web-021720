class Patient
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select{ |song| song.patient == self }
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        # Iterates through all songs with this genre and returns the artists
        song = self.appointments
        song.map{ |song| song.doctor }
    end

    def self.all
        @@all
    end
end
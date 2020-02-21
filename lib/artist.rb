class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select{ |song| song.artist == self}
    end

    def genres
        # Iterates through all the songs and finds the genre of each one
        song = self.songs
        song.map{ |song| song.genre }
    end

    def self.all
        @@all
    end
end
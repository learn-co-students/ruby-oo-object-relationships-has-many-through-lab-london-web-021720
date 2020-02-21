class Genre
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{ |song| song.genre == self }
    end

    def artists
        # Iterates through all songs with this genre and returns the artists
        song = self.songs
        song.map{ |song| song.artist }
    end

    def self.all
        @@all
    end
end
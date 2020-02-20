class Artist

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        genre_array = songs.map { |song| song.genre }
        genre_array.uniq
    end

    def self.all
        @@all
    end

end
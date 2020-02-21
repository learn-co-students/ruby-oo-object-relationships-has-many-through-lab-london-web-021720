class Song
    @@all = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    # def artist=(artist)
    #     @artist = artist
    # end

    # def genre=(genre)
    #     @genre = genre
    # end

    def self.all
        @@all
    end
end
require "pry"

class Song
    attr_accessor :name, :artist 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        art_name = filename.split(" - ")[0]
        song_name = filename.split(" - ")[1]
        song = Song.new(song_name)
        song.artist_name = art_name
        song
    end

    def artist_name=(name)
        artist_obj = Artist.find_or_create_by_name(name)
        self.artist = artist_obj
    end
 

end

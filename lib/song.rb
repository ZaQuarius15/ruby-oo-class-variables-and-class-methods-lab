class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << @artist
        @genre = genre
        @@genres << @genre
        @@count += 1
    end

    

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.each_with_object({}) do |artist, art_hash|
            if art_hash[artist]
                art_hash[artist] += 1
            else
                art_hash[artist] = 1
            end
        end
    end

    def self.genre_count
        @@genres.each_with_object({}) do |genre, gen_hash|
            if gen_hash[genre]
                gen_hash[genre] += 1
            else
                gen_hash[genre] = 1
            end
        end
    end

end
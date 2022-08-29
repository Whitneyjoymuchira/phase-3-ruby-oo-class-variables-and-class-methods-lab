class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :song, :artist , :genre
    def initialize (song_name, artist, genre)
        @song = song_name
        @artist = artist
        @genre = genre
        @@count += 1
    @@genres << @genre
    @@artists << @artist
    end
    def name
        @song
    end
    def self.count 
        @@count
    end
    def self.genres
        @@genres.uniq
    end    
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        genre_hash = Hash.new
         @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] = genre_hash[genre] + 1
            else
                 genre_hash[genre] = 1
                  #genre_hash.merge!("#{genre}": 1)
            end
         end
         genre_hash
        end
        def self.artist_count
            artist_hash = Hash.new
            @@artists.each do |genre|
               if artist_hash[genre]
                   artist_hash[genre] = artist_hash[genre] + 1
               else
                    artist_hash[genre] = 1
               end
            end
            artist_hash
       end
    end
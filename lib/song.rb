# class Song
#   attr_accessor :name, :artist, :genre

#   @@count = 0
#   @@artists = []
#   @@genres = []

#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@count +=1
#     @@genres << genre
#     @@artists << artist
#   end

#   def self.count
#     @@count
#   end

#   def self.artists
#     @@artists.uniq
#   end

#   def self.artist_count
#     artist_count = {}
#     @@artists.each do |artist|
#       if artist_count[artist]
#         artist_count[artist] += 1 
#       else
#         artist_count[artist] = 1
#       end
#     end
#     artist_count
#   end

#   def self.genres
#     @@genres.uniq
#   end

#   def self.genre_count
#     genre_count = {}
#     @@genres.each do |genre|
#       if genre_count[genre]
#         genre_count[genre] += 1 
#       else
#         genre_count[genre] = 1
#       end
#     end
#     genre_count
#   end
# end
require 'pry'
class Song
  # attr_accessor will create reader and writer instance methods for each argument, reader methods will call any given instance variable instance and writer methods will declare any instance of any called instance variable.
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
      genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end 
  
  def self.artists
    @@artists.uniq
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
      artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end 
  
end

song1 = Song.new("song1", "artist1", "genre1")
song2 = Song.new("song2", "artist2", "genre2")
song3 = Song.new("song3", "artist3", "genre3")

# binding.pry

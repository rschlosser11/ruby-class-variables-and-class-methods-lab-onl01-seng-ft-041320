class Song
  attr_accessor :name, :artist, :genre
  @@count = 0;
  @@genres = [];
  @@artists = [];
  def initialize(name, artist, genre)
    @name = name;
    @artist = artist;
    @genre = genre;
    @@count += 1;
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count;
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    sum = 0
    genre_count = {}
    @@generes.each do |genre|
      if genre_count[genre] == nil
        genre_count[genre] = 1;
      else 
        genre_count += 1;
      end
    end
  end
end

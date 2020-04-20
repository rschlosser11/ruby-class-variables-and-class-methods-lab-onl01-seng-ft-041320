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
    genre_count
  end

  def self.artist_count
    sum = 0
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] == nil
        artist_count[artist] = 1;
      else
        artist_count += 1;
      end
    end
    artist_count
  end
end

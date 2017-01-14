class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name,artist,genre)
    self.name=name
    self.artist=artist
    @@artists << artist
    self.genre=genre
    @@genres << genre
    @@count+=1
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
  def self.genre_count
    res={}
    @@genres.each do |genre|
      if res[genre]
        res[genre]+=1
      else
        res[genre]=1
      end
    end
    res
  end
  def self.artist_count
    res={}
    @@artists.each do |artist|
      if res[artist]
        res[artist]+=1
      else
        res[artist]=1
      end
    end
    res
  end
end

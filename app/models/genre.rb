class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    
    array_of_artists = self.artists
    artist_names = []

    array_of_artists.each do |artist|
      artist_names << artist.name
    end

    artist_names

  end
end

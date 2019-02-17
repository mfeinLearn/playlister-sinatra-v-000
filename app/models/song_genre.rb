class SongGenre < ActiveRecord::Base
  has_many :song_genres
  belongs_to :song
  belongs_to :genre
end

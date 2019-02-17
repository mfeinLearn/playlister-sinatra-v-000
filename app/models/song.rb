require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    self.name.downcase.split(" ").join("-")
    #binding.pry
  end

  def self.find_by_slug(slug)
    name_of_song = slug.split("-").map{|word| word.capitalize}.join(" ")
    Song.find_by(name: name_of_song)
    #binding.pry
  end
end

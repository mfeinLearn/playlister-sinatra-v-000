require 'pry'
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.downcase.split(" ").join("-")
    #binding.pry
  end

  def self.find_by_slug(slug)
    name_of_artist = slug.split("-").map{|word| word.capitalize}.join(" ")
    Artist.find_by(name: name_of_artist)
    #binding.pry
  end
end

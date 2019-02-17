class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    self.name.downcase.split(" ").join("-")
    #binding.pry
  end

  def self.find_by_slug(slug)
    name_of_genre = slug.split("-").map{|word| word.capitalize}.join(" ")
    Genre.find_by(name: name_of_genre)
    #binding.pry
  end

end

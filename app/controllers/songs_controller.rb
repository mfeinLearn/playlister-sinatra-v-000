require 'pry'
class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/new' do
    #@song = Song.create(params[:song][:name], params[:artist_id])
    @artists = Artist.all
  #  @artists = Genre.all
    erb :"songs/new"
  end


  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    #binding.pry
    erb :'/songs/show'
  end


  # post '/song' do
  #   @artist = Artist.create(params["name"])
  # end

end

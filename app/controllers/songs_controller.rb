require 'pry'
class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  # get '/songs/:#{@song.slug}' do
  #   "Hello World"
  # end

  post '/songs/:slug' do
    @song = Song.find(params[:slug])
    #binding.pry
    erb :'songs/show'
  end

  get '/songs/new' do

    erb :'songs/new'
  end

end

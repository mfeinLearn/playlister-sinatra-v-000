require 'pry'
class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  post '/songs/Song.new(slug)' do
    #@song = Song.find(params[:slug])

    binding.pry
    erb :'songs/show'
  end

  get '/songs/new' do

    erb :'songs/new'
  end

end

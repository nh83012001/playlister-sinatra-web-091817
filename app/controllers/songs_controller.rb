require 'pry'

class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get "/songs/new" do
    erb :'songs/new'
  end

  post '/songs' do

    @song = Song.create(params["song"])
binding.pry
    redirect "/songs/#{song.slug}"
  end

  get '/songs/:slug' do
    @song = Song.find_by(params["song"])
    erb :'songs/show'
  end


end

class ArtistsController < ApplicationController


  get '/artists' do
    @artists = Artist.all
    erb :'artists/index'
  end

  # get "/artists/new" do
  #   erb :'artists/new.erb'
  # end

  post '/artists' do
    @artist = Artist.create(params["artist"])
    redirect "/artists/#{artist.id}"
  end

  get '/artists/:slug' do
    @artist = Artist.find_by(params["artist"])
    erb :'artists/show'
  end
end

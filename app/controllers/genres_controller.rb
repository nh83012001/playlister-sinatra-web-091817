class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :'genres/index'
  end

  get "/genres/new" do
    erb :'genres/new.erb'
  end

  post '/genres' do
    song = Genre.create(params["genre"])
    redirect "/genres/#{genre.id}"
  end

  get '/genres/:slug' do
    @genre = Genre.find_by(params["genre"])
    erb :'genres/show'
  end

end

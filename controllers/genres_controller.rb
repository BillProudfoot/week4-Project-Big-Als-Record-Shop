require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require_relative('../models/genre.rb')


get '/genres' do
  @genres = Genre.all
  erb(:"genres/index")
end

get '/genres/new' do
  @albums = Album.all
  erb(:"genres/new")
end

post '/genres' do
  Genre.new(params).save
  redirect to '/genres'
end


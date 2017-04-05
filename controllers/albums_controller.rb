require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require_relative('../models/genre.rb')


get '/albums' do
  @albums = Album.all
  erb(:index)
end

get '/albums/index' do
  @albums = Album.all
  @artists = Artist.all
  @genres = Genre.all
  erb(:"albums/index")
end


get '/albums/new' do
  @artists = Artist.all
  @genres = Genre.all
  erb(:"albums/new")
end

post '/albums' do
  puts params
  Album.new(params).save
  redirect to '/albums'
end


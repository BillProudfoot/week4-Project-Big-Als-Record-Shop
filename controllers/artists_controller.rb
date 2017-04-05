require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require_relative('../models/genre.rb')


get '/artists' do
  @artists = Artist.all
  erb(:"artists/index")
end

get '/artists/new' do
  @albums = Album.all
  erb(:"artists/new")
end

post '/artists' do
  Artist.new(params).save
  redirect to '/artists'
end


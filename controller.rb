require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/album.rb')
require_relative('./models/artist.rb')
require_relative('./models/genre.rb')

get '/albums' do
  @albums = Album.all
  erb(:index)
end

get '/albums/new' do
  @artists = Artist.all
  @genres = Genre.all
  erb(:new)
end

post '/albums' do
  album = Album.new(params)
  album.save
  redirect to ('/albums')
end
require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/album')
require_relative('./models/artist')
require_relative('./models/genre')

get '/albums' do
  @albums = Album.all
  erb(:index)
end

get '/albums/new' do
  @artists = Artist.all
  erb(:new)
end

post '/albums' do
  Album.new(params).save
  redirect to '/albums'
end
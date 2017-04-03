require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/album.rb')
require_relative('./models/artist.rb')
# require_relative('./models/genre.rb')

get '/albums' do
  @albums = Album.all
  erb(:index)
end

get '/albums/new' do
  @artists = Artist.all
  erb(:new)
end

post '/albums' do
  puts params
  Album.new(params).save
  redirect to '/albums'
end

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




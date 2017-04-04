require_relative('../models/album.rb')
require_relative('../models/artist.rb')
require_relative('../models/genre.rb')
require('pry-byebug')

Album.delete_all
Genre.delete_all
Artist.delete_all


artist1 = Artist.new({
  'name' => "Various"
  })

artist2 = Artist.new({
  'name' => "Michael Buble"
  })

artist3 = Artist.new({
  'name' => "ABBA"
  })

artist4 = Artist.new({
  'name' => "The Proclaimers"
  })

artist5 = Artist.new({
  'name' => "Black Eyed Peas"
  })

artist6 = Artist.new({
  'name' => "Runrig"
  })

artist7 = Artist.new({
  'name' => "Pussycat Dolls"
  })

artist8 = Artist.new({
  'name' => "Donna Summer"
  })

artist9 = Artist.new({
  'name' => "Elvis"
  })

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save
artist6.save
artist7.save
artist8.save
artist9.save

genre1 = Genre.new({
  'type' => "Easy Listening"
  })

genre2 = Genre.new({
  'type' => "Rock"
  })

genre3 = Genre.new({
  'type' => "Pop"
  })

genre4 = Genre.new({
  'type' => "Love Songs"
  })

genre5 = Genre.new({
  'type' => "Anthems"
  })

genre6 = Genre.new({
  'type' => "Classical"
  })


genre1.save
genre2.save
genre3.save
genre4.save
genre5.save

album1 = Album.new({
  'title' => "Classical Chillout",
  'artist_id' => artist1.id,
  'genre_id' => genre6.id,
  'quantity' => 8,
  'buy_price' => 10,
  'sell_price' => 14,
  'artwork' => '/images/album_covers/classical_chillout'
  })

album2 = Album.new({
  'title' => "Early Years",
  'artist_id' => artist1.id,
  'genre_id' => genre2.id,
  'quantity' => 5,
  'buy_price' => 9,
  'sell_price' => 14
  })

album3 = Album.new({
  'title' => "Greatest Hits",
  'artist_id' => artist1.id,
  'genre_id' => genre2.id,
  'quantity' => 3,
  'buy_price' => 11,
  'sell_price' => 14
  })

album4 = Album.new({
  'title' => "Funhouse",
  'artist_id' => artist2.id,
  'genre_id' => genre3.id,
  'quantity' => 3,
  'buy_price' => 10,
  'sell_price' => 14
  })

album5 = Album.new({
  'title' => "Truth About Love",
  'artist_id' => artist2.id,
  'genre_id' => genre4.id,
  'quantity' => 7,
  'buy_price' => 6,
  'sell_price' => 14
  })

album6 = Album.new({
  'title' => "21",
  'artist_id' => artist3.id,
  'genre_id' => genre5.id,
  'quantity' => 3,
  'buy_price' => 12,
  'sell_price' => 14
  })

album1.save
album2.save
album3.save
album4.save
album5.save
album6.save

Album.all

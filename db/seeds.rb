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
genre6.save

album1 = Album.new({
  'title' => "Classical Chillout",
  'artist_id' => artist1.id,
  'genre_id' => genre6.id,
  'quantity' => 8,
  'buy_price' => 10,
  'sell_price' => 14,
  'artwork' => "classical_chillout.jpg" 
  })


album2 = Album.new({
  'title' => "Crazy Love",
  'artist_id' => artist2.id,
  'genre_id' => genre4.id,
  'quantity' => 5,
  'buy_price' => 9,
  'sell_price' => 14,
  'artwork' => "crazy_love.jpg"
  })

album3 = Album.new({
  'title' => "Gold Greatest Hits",
  'artist_id' => artist3.id,
  'genre_id' => genre3.id,
  'quantity' => 3,
  'buy_price' => 11,
  'sell_price' => 14,
  'artwork' => 'gold_greatest_hits.jpg'
  })

album4 = Album.new({
  'title' => "Lets Hear it for the dogs",
  'artist_id' => artist4.id,
  'genre_id' => genre3.id,
  'quantity' => 3,
  'buy_price' => 10,
  'sell_price' => 14,
  'artwork' => 'lets_hear_it_for_the_dogs.jpg'
  })

album5 = Album.new({
  'title' => "Michael Buble",
  'artist_id' => artist2.id,
  'genre_id' => genre3.id,
  'quantity' => 7,
  'buy_price' => 6,
  'sell_price' => 14,
  'artwork' => 'michael_buble.jpg'
  })

album6 = Album.new({
  'title' => "Monkey Business",
  'artist_id' => artist5.id,
  'genre_id' => genre3.id,
  'quantity' => 3,
  'buy_price' => 12,
  'sell_price' => 14,
  'artwork' => 'monkey_business.jpg'
  })

album1.save
album2.save
album3.save
album4.save
album5.save
album6.save

Album.all

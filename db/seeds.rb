require_relative('../models/album.rb')
require_relative('../models/artist.rb')
# require_relative('../models/genre.rb')
require('pry-byebug')

# Genre.delete_all
# Artist.delete_all
# Album.delete_all

artist1 = Artist.new({
  'name' => "Elvis"
  })

artist2 = Artist.new({
  'name' => "P!nk"
  })

artist3 = Artist.new({
  'name' => "Adele"
  })

artist1.save
artist2.save
artist3.save

# genre1 = Genre.new({
#   'type' => "Easy Listening"
#   })

# genre2 = Genre.new({
#   'type' => "Rock"
#   })

# genre3 = Genre.new({
#   'type' => "Pop"
#   })

# genre4 = Genre.new({
#   'type' => "Love Songs"
#   })

# genre5 = Genre.new({
#   'type' => "Anthems"
#   })

# genre1.save
# genre2.save
# genre3.save
# genre4.save
# genre5.save

album1 = Album.new({
  'title' => "Wonder of you",
  'artist_id' => artist1.id,
  # 'genre_id' => genre1.id,
  'quantity' => 8,
  'buy_price' => 10,
  'sell_price' => 14
  })

album2 = Album.new({
  'title' => "Early Years",
  'artist_id' => artist1.id,
  # 'genre_id' => genre2.id,
  'quantity' => 5,
  'buy_price' => 9,
  'sell_price' => 14
  })

album3 = Album.new({
  'title' => "Greatest Hits",
  'artist_id' => artist1.id,
  # 'genre_id' => genre2.id,
  'quantity' => 3,
  'buy_price' => 11,
  'sell_price' => 14
  })

album4 = Album.new({
  'title' => "Funhouse",
  'artist_id' => artist2.id,
  # 'genre_id' => genre3.id,
  'quantity' => 3,
  'buy_price' => 10,
  'sell_price' => 14
  })

album5 = Album.new({
  'title' => "Truth About Love",
  'artist_id' => artist2.id,
  # 'genre_id' => genre4.id,
  'quantity' => 7,
  'buy_price' => 6,
  'sell_price' => 14
  })

album6 = Album.new({
  'title' => "21",
  'artist_id' => artist3.id,
  # 'genre_id' => genre5.id,
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

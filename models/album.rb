require_relative( '../db/sql_runner' )

class Album

  attr_reader( :name, :type, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @title = options['title']
    @artist_id = options['artist_id'].to_i
    @genre_id = options['genre_id']
    @quantity = options['quantity'].to_i
    @buy_price = options['buy_price']
  end

  def save()
    sql = "INSERT INTO albums (
      title, artist_id, genre_id, quantity, buy_price
    ) VALUES (
      '#{ @title }', '#{ @artist_id }', #{ @genre_id }, #{ @quantity}, #{ @buy_price}
    ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end


 end 
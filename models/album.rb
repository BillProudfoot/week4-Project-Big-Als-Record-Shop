require_relative( '../db/sql_runner' )
require_relative('./artist')
require_relative('./genre')

class Album

  attr_reader( :title, :artist_id, :quantity, :genre_id, :id, :stock_level, :buy_price, :sell_price, :mark_up )

  def initialize( options )
    return if options == nil
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @artist_id = options['artist_id'].to_i
    @genre_id = options['genre_id'].to_i
    @quantity = options['quantity'].to_i
    @buy_price = options['buy_price'].to_f
    @sell_price = options['sell_price'].to_f
  end

  def save()
    sql = "INSERT INTO albums (
    title, artist_id, genre_id, quantity, buy_price, sell_price
    ) VALUES (
      '#{ @title }', '#{ @artist_id }', '#{ @genre_id }', #{ @quantity}, #{ @buy_price}, #{ @sell_price}
    ) RETURNING *"
    result = SqlRunner.run(sql)
    id = result.first['id']
    @id = id
  end

  def stock_level
    level = ""
    if @quantity > 10
      level = "High"
    elsif @quantity > 3
      level = "Medium"
    elsif @quantity > 0 && @quantity < 4 
      level = "Low"
    else
      level = "No Stock Found"
    end
  end

  def getProperColor($stock_level)
  {
      if ($stock_level > 0 && $stock_level <= 5)
          return '#00FF00';
      else if ($stock_level >= 6 && $stock_level <= 10)
          return = '#FF8000';
      else if ($stock_level >= 11)
          return = '#FF0000';
  }
end

  def album_artwork
    url = ""
    if @title =  
  end

  def mark_up
      mark_up = ((sell_price/buy_price) - 1) * 100
  end

  def artist
      sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
      result = SqlRunner.run(sql)
      return Artist.new(result.first)
  end

  def genre
      sql = "SELECT * FROM genres WHERE id = #{@genre_id}"
      result = SqlRunner.run(sql)
      return Genre.new(result.first)
  end

  # def genre
  #     sql = "SELECT * FROM genres WHERE id = #{@genre_id};"
  #     genres = SqlRunner.run(sql)
  #     genre_list = genres
  #     genre = Genre.new(genre_list)
  #   return genre
  #   end

  # def save()
  #   sql = "INSERT INTO albums (title) VALUES ('#{ @title }') RETURNING *"
  #   results = SqlRunner.run(sql)
  #   @id = results.first()['id'].to_i
  # end

  def self.all
    sql = "SELECT * FROM albums"
    albums = map_albums(sql)
    return albums
  end

  def self.map_albums(sql)
    albums = SqlRunner.run(sql)
    return albums.map {|album| Album.new(album)}
  end

  # def self.find(id)
  #   sql = " SELECT * FROM albums WHERE id=#{id}"
  #   results = SqlRunner.run(sql)
  #   return Album.new( results.first)
  # end

  def self.delete_all
    sql = "DELETE FROM albums"
    SqlRunner.run( sql )
  end

 end 
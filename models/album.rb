require_relative( '../db/sql_runner' )

class Album

  attr_reader( :title, :artist_id, :quantity, :id, :stock_level )

  def initialize( options )
    return if options == nil
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @artist_id = options['artist_id'].to_i
    # @genre_id = options['genre_id'].to_i
    @quantity = options['quantity'].to_i
    # @buy_price = options['buy_price']
  end

  def save()
    sql = "INSERT INTO albums (
    title, artist_id, quantity
    ) VALUES (
      '#{ @title }', '#{ @artist_id }', #{ @quantity}
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

  def artist
      sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
      result = SqlRunner.run(sql)
      return Artist.new(result.first)
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

  # def self.delete_all
  #   sql = "DELETE FROM albums"
  #   SqlRunner.run( sql )
  # end

 end 
require_relative('../db/sql_runner')

class Artist

  attr_reader( :id, :name, :artist_id )

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{ @name }') RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def find( id )
    sql = "SELECT * FROM artists WHERE id=#{id}"
    artist = SqlRunner.run( sql ).first
    return artist
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artists = map_artists(sql)
    return artists
  end


  def self.map_artists(sql)
    artists = SqlRunner.run( sql )
    return artists.map { |artist| Artist.new(artist) }
  end

 

  # def self.delete_all
  #   sql = "DELETE FROM artists"
  #   SqlRunner.run( sql )
  # end

end
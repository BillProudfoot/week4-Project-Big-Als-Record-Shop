require_relative('../db/sql_runner')
require_relative('./album')
require_relative('./artist')

class Genre

  attr_reader( :id, :type )

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO genres (type) VALUES ('#{ @type }') RETURNING *"
    results = SqlRunner.run(sql)
    id = results.first['id']
    @id = id
  end

  def album
      sql = "SELECT * FROM albums WHERE genre_id = #{@id}"
      result = SqlRunner.run(sql)
      return Album.new(result.first)
  end


  # def find( id ) Not required in project spec but was added for possible additions
  #   sql = "INSERT * FROM genres WHERE id=#{id}"
  #   genre = SqlRunner.run( sql ).first
  #   return genre
  # end

  def self.all()
    sql = "SELECT * FROM genres"
    genres = map_genres(sql)
    return genres
  end

  def self.map_genres(sql)
    genres = SqlRunner.run( sql )
    return genres.map { |genre| Genre.new(genre) }.sort_by {|genre| genre.type}
  end


  def self.delete_all
    sql = "DELETE FROM genres"
    SqlRunner.run( sql )
  end

end
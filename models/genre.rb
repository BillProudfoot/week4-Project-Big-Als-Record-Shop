require_relative('../db/sql_runner')

class Genre

  attr_reader( :type, :album_id, :genre_id, :id )

  def initialize(options)
    @id = nil || options['id'].to_i
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO genres (
      type
    ) VALUES (
      '#{ @type }'
    ) RETURNING *"
    results = SqlRunner.run(sql)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM genres"
    results = SqlRunner.run( sql )
    return results.map { |hash| Genre.new( hash ) }
  end

  def self.find( id )
    sql = "SELECT * FROM genres WHERE id=#{id}"
    results = SqlRunner.run( sql )
    return Genre.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM genres"
    SqlRunner.run( sql )
  end

end
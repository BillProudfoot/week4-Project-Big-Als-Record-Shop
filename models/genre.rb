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


end
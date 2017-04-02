# require_relative('../db/sql_runner')

# class Genre

#   attr_reader( :id, :type )

#   def initialize(options)
#     @id = options['id'].to_i
#     @type = options['type']
#   end

#   def save()
#     sql = "INSERT INTO genres (
#       type
#     ) VALUES (
#       '#{ @type }'
#     ) RETURNING *"
#     results = SqlRunner.run(sql)
#     @id = results.first()["id"].to_i
#   end

#   def find( id )
#     sql = "INSERT * FROM genres WHERE id=#{id}"
#     genre = SqlRunner.run( sql ).first
#     return genre
#   end

#   def self.all()
#     sql = "SELECT * FROM genres"
#     genres = map_genres(sql)
#     return genres
#   end

#   def self.map_genres(sql)
#     genres = SqlRunner.run( sql )
#     return genres.map { |genre| Genre.new(genre) }
#   end


#   def self.delete_all
#     sql = "DELETE FROM genres"
#     SqlRunner.run( sql )
#   end

# end
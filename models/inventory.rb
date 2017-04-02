# require_relative( '../db/sql_runner' )

# class Inventory

#   attr_reader( :quantity, :buy_price, :id )

#   def initialize( options )
#     @id = nil || options['id'].to_i
#     @quantity = options['quantity'].to_i
#     @total_cost_value = options['total_cost_value']
#   end

#   def save()
#     sql = "INSERT INTO inventorys (
#       quantity, total_cost_value
#     ) VALUES (
#       #{ @quantity}, #{ @total_cost_value}
#     ) RETURNING *"
#     results = SqlRunner.run(sql)
#     @id = results.first()['id'].to_i
#   end


# end
class Driver < ActiveRecord::Base
  def self.find_youngest_driver
    Driver.order("age ASC").first
  end
end

# Create
# Driver.new(hash) -> creates a Ruby object
# Driver#save -> saves object in DB (creates a row in the DB & assigns our object an ID)

# Driver.create(hash) -> Driver.new + Driver#save

# Read
# Driver.all -> returns an array of all Driver objects
# Driver.first - Driver.fifth
# Driver.last
# Driver.find(id)
# Driver.find_by(hash)
# Driver.where(hash)
# Driver.where(condition)
# Driver.minimum(column_name)
# Driver.order("column_name DESC").first
# Driver.order("column_name ASC").first

# Update

# Driver#attribute_name = new_value -> update the attribute ONLY in Ruby
# Driver#save -> actually update the record in the DB

# Driver#update -> the two above at the same time
# Driver.update -> update all the drivers!

# Delete

# Driver#destroy
# Driver.destroy_all

class AddPassengerIdToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :passenger_id, :integer
  end
end

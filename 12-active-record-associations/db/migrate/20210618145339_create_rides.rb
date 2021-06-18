class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.integer :driver_id
      t.integer :price
      t.integer :distance
      t.string :destination
      t.string :pick_up
    end
  end
end

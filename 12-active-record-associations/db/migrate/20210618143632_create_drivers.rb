class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :rating
      t.integer :years_experience
      t.string :car_model
      t.string :license_plate
    end
  end
end

class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.integer :years_experience
      t.integer :salary
      t.string :car_model
    end
  end
end

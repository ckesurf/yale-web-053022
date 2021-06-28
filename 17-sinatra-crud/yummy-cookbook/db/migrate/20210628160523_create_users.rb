class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.boolean :coffee_lover
      t.boolean :vegan
      t.string :gender
      t.string :food_restrictions
    end
  end
end

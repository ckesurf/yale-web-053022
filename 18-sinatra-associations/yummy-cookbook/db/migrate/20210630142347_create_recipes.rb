class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :rating
      t.string :ingredients
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end

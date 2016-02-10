class CreateRecipeBooks < ActiveRecord::Migration
  def change
    create_table :recipe_books do |t|
      t.string :title
      t.text :instructions
      t.text :ingredients
      t.integer :rating
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

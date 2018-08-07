class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :recipe_type
      t.string :cuisine
      t.string :method
      t.string :cook_time
      t.string :integer

      t.timestamps null: false
    end
  end
end

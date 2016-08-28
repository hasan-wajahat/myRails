class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.integer 'recipe_list_id'
      t.string 'recipe_name', limit: 50
      t.text 'ingredients'
      t.text 'recipe'
      t.timestamps
    end

    add_index :recipes, ['recipe_name', 'recipe_list_id']
  end
end

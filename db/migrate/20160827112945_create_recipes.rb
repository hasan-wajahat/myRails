class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string 'recipe_name', limit: 50
      t.string 'category', limit: 25
      t.integer 'chef_id'
      t.text 'ingredients'
      t.text 'recipe'
      t.timestamps
    end

    add_index :recipes, ['recipe_name', 'category', 'chef_id']
  end
end

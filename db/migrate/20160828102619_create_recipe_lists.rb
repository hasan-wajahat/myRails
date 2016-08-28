class CreateRecipeLists < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_lists do |t|
      t.string 'recipe_name', limit: 50
      t.string 'category', limit: 25
      t.integer 'chef_id'
      t.text 'details'
      t.timestamps
    end

    add_index :recipe_lists, ['recipe_name', 'category', 'chef_id']
  end
end

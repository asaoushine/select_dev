class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :great_grandparent_name
      t.string :grandparent_name
      t.string :parent_name
      t.string :name
      t.integer :layer
      t.string :tag_image

      t.timestamps
    end
    add_index :tags, :name, unique: true
  end
end

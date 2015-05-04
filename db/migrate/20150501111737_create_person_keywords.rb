class CreatePersonKeywords < ActiveRecord::Migration
  def change
    create_table :person_keywords do |t|
      t.references :person, index: true
      t.references :keyword, index: true

      t.timestamps
    end
  end
end

class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.boolean :bad_guy
      t.integer :project_id, null: false

      t.timestamps null: false
    end
    add_index :characters, :project_id
  end
end

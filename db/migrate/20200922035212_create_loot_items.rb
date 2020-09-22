class CreateLootItems < ActiveRecord::Migration[6.0]
  def change
    create_table :loot_items do |t|
      t.string :name
      t.text :description
      t.references :dungeon_level, null: false, foreign_key: true
      t.string :type
      t.integer :bonus

      t.timestamps
    end
  end
end

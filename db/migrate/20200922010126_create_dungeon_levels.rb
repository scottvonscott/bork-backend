class CreateDungeonLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :dungeon_levels do |t|
      t.integer :level_number
      t.string :entry_text
      t.string :exit_text

      t.timestamps
    end
  end
end

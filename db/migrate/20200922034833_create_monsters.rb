class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :health
      t.integer :attack
      t.references :dungeon_level, null: false, foreign_key: true
      t.string :img_url
      t.string :intro_text
      t.string :death_text

      t.timestamps
    end
  end
end

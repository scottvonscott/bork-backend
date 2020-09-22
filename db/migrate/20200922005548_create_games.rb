class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :Player, null: false, foreign_key: true
      t.integer :turn_count
      t.integer :score
      t.integer :player_health
      t.integer :player_attack

      t.timestamps
    end
  end
end

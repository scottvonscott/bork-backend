class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :score
      t.string :player_name



      t.timestamps
    end
  end
end

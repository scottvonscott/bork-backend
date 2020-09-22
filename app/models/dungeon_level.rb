class DungeonLevel < ApplicationRecord
    has_many :monsters
    has_many :items
end

class DungeonLevel < ApplicationRecord
    has_many :monsters
    has_many :loot_items
end


class DungeonLevelSerializer
    include FastJsonapi::ObjectSerializer
    attributes :level_number, :entry_text, :exit_text
    attribute :loot_items do |object|
      object.loot_items.map do |l|
        {name: l.name, description: l.description, bonus_type: l.bonus_type, bonus: l.bonus}
      end
       
    end

    attribute :monsters do |object|
        object.monsters.map do |m|
          {name: m.name, health: m.health, attack: m.attack, img_url: m.img_url,
            intro_text: m.intro_text, quote: m.quote, death_text: m.death_text}
        end
         
      end
  
  end
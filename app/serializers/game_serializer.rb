class GameSerializer
    include FastJsonapi::ObjectSerializer
    attributes :player, :score, :player_health, :player_attack
end
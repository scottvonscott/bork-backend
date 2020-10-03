class GameSerializer
    include FastJsonapi::ObjectSerializer
    attributes :player_name, :score
end
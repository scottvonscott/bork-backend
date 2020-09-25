class Game < ApplicationRecord
  belongs_to :player

  def self.high_scores
    self.order('score DESC')
  end
end

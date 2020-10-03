class Game < ApplicationRecord

  def self.high_scores
    self.order('score DESC')
  end
end

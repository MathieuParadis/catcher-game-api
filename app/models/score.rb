class Score < ApplicationRecord
    validates :player_name, presence: true, length: { in: 2..40 }
    validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :valid_score_multiple_of_50
  
    private
  
    def valid_score_multiple_of_50
      unless score % 50 == 0
        errors.add(:score, "must be a multiple of 50")
      end
    end
  end
  
class Haiku < ApplicationRecord
    belongs_to :user
    has_many :ratings, dependent: :destroy

    has_many :ratings, dependent: :destroy

    # Use validate when it's a custom method you made
    validate :valid_poem

    # Use validates when it's a rails method
    validates :title, presence: true
    validates :poem, uniqueness: true, presence: true

    def average_rating
        total_number_of_ratings = self.ratings.count
        if total_number_of_ratings == 0
            return 0
        else
            total_added_numbers = self.ratings.sum(&:vote)
            return (total_added_numbers.to_f / total_number_of_ratings.to_f).round(2)
        end
    end

    def valid_poem
        is_valid = true

        if self.poem.lines.count != 3
          is_valid = false
        end

        if is_valid == true
            line1 = poem.split("\n")[0]
            line2 = poem.split("\n")[1]
            line3 = poem.split("\n")[2]

            if line1.blank? || line1.to_phrase.syllables != 5
               is_valid = false
            end

            if line2.blank? ||  line2.to_phrase.syllables != 7
                is_valid = false
            end

            if line3.blank? || line3.to_phrase.syllables != 5
                is_valid = false
            end
        end

        if is_valid
            return true
        else
          errors.add(:invalid_poem, ': The poem does not match haiku rules')
          throw(:abort)
        end
    end
end

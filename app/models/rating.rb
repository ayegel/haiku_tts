class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :haiku
  
  validates :vote, presence: true
  validates :user_id, uniqueness: { scope: :haiku_id }
end
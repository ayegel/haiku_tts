class User < ApplicationRecord
    # There are many user_ids in the Haiku Data Table
    # When I delete a user, all haikus with user_id will also be deleted
    has_many :haikus, dependent: :destroy
    has_many :ratings, dependent: :destroy

    validates :name, presence: true
    validates :email, uniqueness: true, presence: true
end

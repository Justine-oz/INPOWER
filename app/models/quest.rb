class Quest < ApplicationRecord
  has_many :user_quests
  belongs_to :flashcard
  belongs_to :video
end

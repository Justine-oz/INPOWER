class Quest < ApplicationRecord
  has_many :user_quests
  has_many :flashcards
  has_many :videos
end

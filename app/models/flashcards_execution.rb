class FlashcardsExecution < ApplicationRecord
  belongs_to :flashcard
  belongs_to :user_quest
end

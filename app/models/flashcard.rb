class Flashcard < ApplicationRecord
  belongs_to :quest
  has_many :flashcards_executions, dependent: :destroy
end

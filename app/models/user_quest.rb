class UserQuest < ApplicationRecord
  belongs_to :user
  belongs_to :quest
  has_many :chatrooms
  has_many :flashcards_executions, dependent: :destroy
  has_many :videos_executions, dependent: :destroy
end

class UserQuest < ApplicationRecord
  belongs_to :user
  belongs_to :quest
  has_many :chatrooms
  has_many :flashcards_executions
  has_many :videos_executions
end

class UserQuest < ApplicationRecord
  belongs_to :user
  belongs_to :quest
  has_many :chatrooms, dependent: :destroy
  has_many :flashcards_executions, dependent: :destroy
  has_many :videos_executions, dependent: :destroy

  after_create :generate_chatroom

  def generate_chatroom
    Chatroom.create(user_quest: self, theme: self.quest.name)
  end

  def chatroom
    self.chatrooms.first
  end
end

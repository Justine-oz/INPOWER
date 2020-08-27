class Chatroom < ApplicationRecord
  belongs_to :user_quest
  has_many :messages, dependent: :destroy

  def user
    message_index = self.messages.index do |message|
      !message.user.admin
    end
    self.messages[message_index].user
  end
end

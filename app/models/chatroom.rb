class Chatroom < ApplicationRecord
  belongs_to :user_quest
  has_many :messages, dependent: :destroy
end

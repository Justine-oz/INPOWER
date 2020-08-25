class Video < ApplicationRecord
  belongs_to :quest
  has_many :videos_executions, dependent: :destroy
end

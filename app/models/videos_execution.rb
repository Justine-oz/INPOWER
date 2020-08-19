class VideosExecution < ApplicationRecord
  belongs_to :video
  belongs_to :user_quest
end

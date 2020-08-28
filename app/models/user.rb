class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_quests, dependent: :destroy
  has_many :quests, through: :user_quests, dependent: :destroy
  has_many :messages, dependent: :destroy

  MOODS = ["Stressé.e", "Jaloux.se", "Incompris.e", "En colère", "Seul.e", "Optimiste", "Amoureux.se", "Fort.e", "Honteux.se", "Trahi.e", "Sûr.e de moi", "Je ne sais pas"]

   def total_progress(quest)
    userquest = UserQuest.find_by(user: self, quest: quest)
    videos = quest.videos.reject do |video|
      VideosExecution.find_by(user_quest: userquest, video: video)
    end
    flashcards = quest.flashcards.reject do |flashcard|
      FlashcardsExecution.find_by(user_quest: userquest, flashcard: flashcard)
    end
    remaining = videos + flashcards

    total_videos = quest.videos.length
    total_flashcards = quest.flashcards.length
    total_progress = total_videos + total_flashcards

    done_total_count = total_progress - remaining.length
    progress = ((done_total_count/total_progress.to_f)*100).truncate
  end
end

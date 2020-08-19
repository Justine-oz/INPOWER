class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_quests

  MOODS = ["Stressé.e", "Jaloux.se", "Incompris.e", "En colère", "Seul.e", "Optimiste", "Amoureux.se", "Fort.e", "Honteux.se", "Trahi.e", "Sûr.e de moi", "Je ne sais pas"]
end

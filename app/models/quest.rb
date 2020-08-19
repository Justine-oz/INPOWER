class Quest < ApplicationRecord
  has_many :user_quests
  has_many :flashcards
  has_many :videos

  def self.find_by_moods(user_moods)
    # afficher moods rentrés par user : current_user.moods
    quests = []
    all_moods_quests = all.select do |quest|
      user_moods.all? { |user_mood| quest.moods.include?(user_mood) }
    end
    # for each quest, quest.inlude les current_user.moods (a2.all? { |e| a1.include?(e) })
      #if quest.moods.include all current_user.moods true
        #show 1st quest find
      #elsif quest.moods.include all current_user.moods-1 true or -2  true
        #show ces first quests find limit to 4 asc
    return all_moods_quests.first(4)
  end
end

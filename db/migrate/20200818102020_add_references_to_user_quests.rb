class AddReferencesToUserQuests < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_quests, :quest, null: false, foreign_key: true
  end
end

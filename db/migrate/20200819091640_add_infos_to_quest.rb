class AddInfosToQuest < ActiveRecord::Migration[6.0]
  def change
    add_reference :quests, :flashcard, null: false, foreign_key: true
    add_reference :quests, :video, null: false, foreign_key: true
    add_column :quests, :description, :text
  end
end

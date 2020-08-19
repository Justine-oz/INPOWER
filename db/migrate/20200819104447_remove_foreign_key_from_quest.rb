class RemoveForeignKeyFromQuest < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :quests, column: :flashcard_id
  end
end

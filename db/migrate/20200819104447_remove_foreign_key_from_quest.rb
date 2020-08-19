class RemoveForeignKeyFromQuest < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :quest, column: :flashcard_id
    remove_foreign_key :quest, column: :video_id
  end
end

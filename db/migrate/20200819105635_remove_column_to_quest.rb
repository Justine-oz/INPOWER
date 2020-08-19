class RemoveColumnToQuest < ActiveRecord::Migration[6.0]
  def change
    remove_column :quests, :flashcard_id
    remove_column :quests, :video_id
  end
end

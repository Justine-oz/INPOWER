class AddColumnImageUrlToQuest < ActiveRecord::Migration[6.0]
  def change
    add_column :quests, :image_url, :string
  end
end

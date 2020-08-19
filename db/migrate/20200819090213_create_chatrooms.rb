class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :theme
      t.references :user_quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end

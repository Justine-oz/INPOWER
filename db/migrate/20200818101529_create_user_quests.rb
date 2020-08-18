class CreateUserQuests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_quests do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

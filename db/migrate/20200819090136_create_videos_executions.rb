class CreateVideosExecutions < ActiveRecord::Migration[6.0]
  def change
    create_table :videos_executions do |t|
      t.references :video, null: false, foreign_key: true
      t.references :user_quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end

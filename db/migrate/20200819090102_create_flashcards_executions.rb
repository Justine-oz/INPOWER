class CreateFlashcardsExecutions < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards_executions do |t|
      t.references :flashcard, null: false, foreign_key: true
      t.references :user_quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end

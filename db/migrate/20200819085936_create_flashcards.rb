class CreateFlashcards < ActiveRecord::Migration[6.0]
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :tip
      t.references :quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end

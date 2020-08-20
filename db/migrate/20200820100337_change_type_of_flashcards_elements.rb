class ChangeTypeOfFlashcardsElements < ActiveRecord::Migration[6.0]
  def change
    change_column :flashcards, :question, :text
    change_column :flashcards, :tip, :text
  end
end

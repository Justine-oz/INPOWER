class AddInfosToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :gender, :string
    add_column :users, :moods, :text, array: true, default: []
    add_column :users, :admin, :boolean
    add_column :users, :preferences, :text, array: true, default: []
    add_column :users, :birth, :date
  end
end

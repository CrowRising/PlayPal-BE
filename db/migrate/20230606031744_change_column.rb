class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :user_playgrounds, :playground_id, :string
  end
end

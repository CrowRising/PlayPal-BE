class ChangePlaygroundId < ActiveRecord::Migration[7.0]
  def change
    change_column :reviews, :playground_id, :string
  end
end

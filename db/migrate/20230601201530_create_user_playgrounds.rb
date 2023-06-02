class CreateUserPlaygrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :user_playgrounds do |t|
      t.integer :user_id
      t.integer :playground_id
      t.string :playground_name

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :rating
      t.string :comment
      t.string :image
      t.integer :playground_id

      t.timestamps
    end
  end
end

class UserPlayground < ApplicationRecord
  validates :user_id, presence: true
  validates :playground_id, presence: true
  validates :playground_name, presence: true
end

class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :playground_id, presence: true
  validates :rating, numericality: { in: 1..5 }
  # validates :rating, presence: true
  # validates :comment, presence: true

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://s3.amazonaws.com/playground-reviews/default-image.png"
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

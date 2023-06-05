class ReviewSerializer
  include JSONAPI::Serializer
  attributes :comment, :user_id, :rating, :image, :playground_id
end

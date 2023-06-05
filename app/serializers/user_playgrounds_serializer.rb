class UserPlaygroundsSerializer
  include JSONAPI::Serializer
  attributes :user_id, :playground_id, :playground_name
end

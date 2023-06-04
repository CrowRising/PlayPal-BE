class PlaygroundSerializer
  include JSONAPI::Serializer
  attributes :playground_name, :playground_address, :rating
end

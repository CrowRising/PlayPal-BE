FactoryBot.define do
  factory :user_playground do
    user_id { Faker::Number.within(range: 1..1000) }
    playground_id { Faker::Number.within(range: 1..1000) }
    playground_name { Faker::Lorem.word }
  end
end

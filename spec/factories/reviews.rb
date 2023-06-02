FactoryBot.define do
  factory :review do
    user_id { Faker::Number.within(range: 1..1000) }
    rating { Faker::Number.within(range: 1..5) }
    comment { Faker::Lorem.paragraph }
    image { Faker::Lorem.word }
    playground_id { Faker::Number.within(range: 1..1000) }
  end
end

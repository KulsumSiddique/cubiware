FactoryGirl.define do
  factory :show do
    name { Faker::Lorem.word }
    category
    channel
  end
end

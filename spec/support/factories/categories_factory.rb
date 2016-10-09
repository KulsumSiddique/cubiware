FactoryGirl.define do
  factory :category do
    name { |i| "#{Faker::Lorem.word} #{i}" }
  end
end

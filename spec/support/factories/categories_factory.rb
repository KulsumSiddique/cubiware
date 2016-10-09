FactoryGirl.define do
  factory :category do
    sequence(:name) { |i| "#{Faker::Lorem.word} #{i}" }
  end
end

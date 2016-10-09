FactoryGirl.define do
  factory :channel do
    sequence(:name) { |i| "#{Faker::Lorem.word} #{i}" }
  end
end

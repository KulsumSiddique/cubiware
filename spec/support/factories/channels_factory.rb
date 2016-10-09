FactoryGirl.define do
  factory :channel do
    name { |i| "#{Faker::Lorem.word} #{i}" }
  end
end

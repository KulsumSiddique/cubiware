FactoryGirl.define do
  factory :show do
    sequence(:name) { |i| "#{Faker::Lorem.sentence} #{i}" }
    category
  end
end

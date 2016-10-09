FactoryGirl.define do
  factory :show do
    name { |i| "#{Faker::Lorem.sentence} #{i}" }
    category
  end
end

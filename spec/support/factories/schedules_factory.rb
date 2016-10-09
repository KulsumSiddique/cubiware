FactoryGirl.define do
  factory :schedule do
    time { DateTime.now }
    show
    channel
  end

  trait :past do
    time { DateTime.now - rand(1..99).days }
  end

  trait :future do
    time { DateTime.now + rand(1..99).days }
  end
end

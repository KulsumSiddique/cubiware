FactoryGirl.define do
  factory :schedule do
    time { rand Date.today.at_beginning_of_day..Date.today.at_end_of_day }
    show
    channel
  end

  trait :past do
    time { rand(99.days.ago..2.day.ago) }
  end

  trait :future do
    time { rand(2.days.from_now..99.day.from_now) }
  end
end

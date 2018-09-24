FactoryBot.define do
  factory :rent do
    user
    book
    start_date { Faker::Date.forward(1) }
    end_date { start_date + 5.days }
  end
end

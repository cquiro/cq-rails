FactoryBot.define do
  factory :rent do
    user
    book
    start_date { "2018-09-24" }
    end_date { "2018-09-24" }
  end
end

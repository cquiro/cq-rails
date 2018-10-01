FactoryBot.define do
  factory :book_suggestion do
    user
    synopsis { Faker::Lorem.paragraph(4, false, 3) }
    price { Faker::Number.decimal(2) }
    author { Faker::Book.author }
    title { Faker::Book.title }
    link { Faker::Internet.url }
    publisher { Faker::Book.publisher }
    year { Faker::Number.between(1450, 2018).to_s }
  end
end

FactoryGirl.define do
  factory :post do
    title     { Faker::Lorem.sentence(3) }
    body      { Faker::Lorem.paragraph(2) }
    user
  end
end

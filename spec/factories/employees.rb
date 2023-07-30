FactoryBot.define do
  factory :employee do
    name { "MyString" }
    department { "MyString" }
    gender { 1 }
    birth { "2023-07-30" }
    joined_date { "2023-07-30" }
    payment { 1 }
    note { "MyText" }
  end
end

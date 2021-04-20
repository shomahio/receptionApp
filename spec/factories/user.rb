FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation {password}
    last_name             {"山田"}
    first_name            {"太郎"}
    tel                { '09012345678' }
    postal_code        { '123-4567' }
    city               {"あああああ"}
    address            { '1-1' }
    building           { '東京ハイツ' }
    birthday             {"2000-01-01"}
    prefecture_id    {2}
  end
end

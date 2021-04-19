FactoryBot.define do
  factory :store do
    store_name         {"あああああ"}
    postal_code        { '123-4567' }
    city               {"あああああ"}
    address            { '1-1' }
    building           { '東京ハイツ' }
    tel                { '09012345678' }
    email              {Faker::Internet.free_email}
    password           { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation {password}
    director           {"あああああ"}
    prefecture_id      {2}
  end
end

FactoryBot.define do
  factory :genre do
    name              {"gnere"}
    ancestry          {nil}
  end
end

FactoryBot.define do
  factory :place do
    name              {"place"}
    ancestry          {nil}
  end
end
# ||<<

FactoryBot.define do
  factory :information do
    store_name         {"あああああ"}
    postal_code        { '123-4567' }
    city               {"あああああ"}
    address            { '1-1' }
    building           { '東京ハイツ' }
    tel                { '09012345678' }
    email              {Faker::Internet.free_email}
    # genre_id           {2}
    # place_id           {2}
    light_id           {2}
    volume_id          {2}
    budget_id          {2}
    tobacco_id         {2}
    holiday_id         {2}
    booking_id         {2}
    parking_id         {2}
    reception_id       {2}
    seet               {6}
    food               {"ああああ"}
    explanation        {"ああああ"}
    transportation     {"ああああ"}
    opening_time       {"13:00:00"}
    closing_time       {"15:00:00"}
    association :store

    after(:build) do |information|
      information.image.attach(io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg')
      information.image_foods.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])
      information.image_appearances.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])
      information.image_introspections.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])
      information.image_entrances.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])
      information.image_seats.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])
      information.image_views.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])
      information.image_toilets.attach([{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'},{io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}])

      parent_genre = create(:genre)
      child_genre = parent_genre.children.create(name: "child")
      information.genre_id = child_genre.id
      
      parent_place = create(:place)
      child_place = parent_place.children.create(name: "child")
      information.place_id = child_place.id
    end


  end
end

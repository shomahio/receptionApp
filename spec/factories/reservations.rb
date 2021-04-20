FactoryBot.define do
  factory :reservation do
    name         {"あああああ"}
    number_of_people     {2}
    tel                { '09012345678' }
    start_time   {"2021-05-11 13:00:00"}
    association :information
    association :user
  end
end
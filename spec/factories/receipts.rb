FactoryBot.define do
  factory :receipt do
    name         {"あああああ"}
    price     {1000}
    proviso           { '飲食代' }
    number    {1111111}
    consent   {}
    association :reservation
    user { reservation.user }
    information { reservation.information }
  end
end
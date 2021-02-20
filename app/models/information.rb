class Information < ApplicationRecord
  belongs_to :store
  has_one_attached :image
  belongs_to :ancestry
  has_many :information_musics
  has_many :musics, through: :information_musics
  has_many :information_payments
  has_many :payments, through: :information_payments
  has_many :information_locations
  has_many :locations, through: :information_locations
  has_many :information_drinks
  has_many :drinks, through: :information_drinks
  has_many :information_services
  has_many :services, through: :information_services
  has_many :information_ages
  has_many :ages, through: :information_ages
  has_many :information_rooms
  has_many :rooms, through: :information_rooms
  has_many :information_spaces
  has_many :spaces, through: :information_spaces
end

class Room < ApplicationRecord
  has_many :information_rooms, dependent: :destroy
  has_many :rooms, through: :information_rooms, dependent: :destroy
end

class Room < ApplicationRecord
  has_many :information_rooms
  has_many :rooms, through: :information_rooms
end

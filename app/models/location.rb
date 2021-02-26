class Location < ApplicationRecord
  has_many :information_locations, dependent: :destroy
  has_many :informations, through: :information_locations, dependent: :destroy
end

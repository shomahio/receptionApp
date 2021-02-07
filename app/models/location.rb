class Location < ApplicationRecord
  has_many :information_locations
  has_many :informations, through: :information_locations
end

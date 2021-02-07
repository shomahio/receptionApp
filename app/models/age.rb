class Age < ApplicationRecord
  has_many :information_ages
  has_many :informations, through: :information_ages
end

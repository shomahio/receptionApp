class Drink < ApplicationRecord
  has_many :information_drinks
  has_many :informations, through: :information_drinks
end

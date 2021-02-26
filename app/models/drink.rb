class Drink < ApplicationRecord
  has_many :information_drinks, dependent: :destroy
  has_many :informations, through: :information_drinks, dependent: :destroy
end

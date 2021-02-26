class Age < ApplicationRecord
  has_many :information_ages, dependent: :destroy
  has_many :informations, through: :information_ages, dependent: :destroy

  
end

class Space < ApplicationRecord
  has_many :information_spaces, dependent: :destroy
  has_many :spaces, through: :information_spaces, dependent: :destroy
end

class Space < ApplicationRecord
  has_many :information_spaces
  has_many :spaces, through: :information_spaces
end

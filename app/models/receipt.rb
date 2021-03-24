class Receipt < ApplicationRecord
  belongs_to :reservation
  belongs_to :user
  belongs_to :information
end

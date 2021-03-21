class Receipt < ApplicationRecord
  belongs_to :reservation
  belongs_to :user, optional: true
  belongs_to :information
end

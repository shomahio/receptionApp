class Receipt < ApplicationRecord
  belongs_to :reservation
  belongs_to :user
  belongs_to :information

  validates :price,   presence: true
  validates :name,    presence: true
  validates :proviso, presence: true
  validates :consent, presence: true, on: :update
end

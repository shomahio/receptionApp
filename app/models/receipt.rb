class Receipt < ApplicationRecord
  belongs_to :reservation, optional: true
  belongs_to :user, optional: true
  belongs_to :information, optional: true

  validates :price,   presence: true
  validates :proviso, presence: true
  validates :consent, presence: true, on: :update
end

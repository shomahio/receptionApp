class Payment < ApplicationRecord
  has_many :information_payments, dependent: :destroy
  has_many :payments, through: :information_payments, dependent: :destroy
end

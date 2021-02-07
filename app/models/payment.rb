class Payment < ApplicationRecord
  has_many :information_payments
  has_many :payments, through: :information_payments
end

class InformationPayment < ApplicationRecord
  belongs_to :information
  belongs_to :payment
end

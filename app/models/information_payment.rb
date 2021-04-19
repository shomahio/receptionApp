class InformationPayment < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :payment, optional: true

  # バリデーション
  #validates :information_id, presence: true
end

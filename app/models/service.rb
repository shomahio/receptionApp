class Service < ApplicationRecord
  has_many :information_services, dependent: :destroy
  has_many :services, through: :information_services, dependent: :destroy
end

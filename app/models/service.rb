class Service < ApplicationRecord
  has_many :information_services
  has_many :services, through: :information_services
end

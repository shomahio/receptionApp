class Information < ApplicationRecord
  belongs_to :store
  has_one_attached :image
end

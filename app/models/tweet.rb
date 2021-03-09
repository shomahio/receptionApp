class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :text, presence: true

  def was_attached?
    self.image.attached?
  end
end

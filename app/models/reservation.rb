class Reservation < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :user, optional: true
  has_one :receipt, dependent: :destroy

  #バリデーション
  with_options presence: true , on: :update do
    validates :name
    validates :number_of_people
    validates :tel
    validates :start_time
  end
end

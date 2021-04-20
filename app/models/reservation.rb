class Reservation < ApplicationRecord
  belongs_to :information
  belongs_to :user, optional: true
  has_one :receipt, dependent: :destroy

  #バリデーション
  with_options presence: {message: "を登録してください"} , on: :update do
    validates :name
    validates :number_of_people
    validates :tel
    validates :start_time
    validates :information_id
  end
end

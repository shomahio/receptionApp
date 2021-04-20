class Receipt < ApplicationRecord
  belongs_to :reservation, optional: true
  belongs_to :user, optional: true
  belongs_to :information, optional: true

  with_options presence: {message: "を登録してください"} do
    validates :price
    validates :name
    validates :proviso
    validates :consent, on: :update
  end      
end

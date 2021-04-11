class Information < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :store
  has_one_attached :image, dependent: :destroy
  has_many_attached :image_foods, dependent: :destroy
  has_many_attached :image_appearances, dependent: :destroy
  has_many_attached :image_introspections, dependent: :destroy
  has_many_attached :image_entrances, dependent: :destroy
  has_many_attached :image_seats, dependent: :destroy
  has_many_attached :image_views, dependent: :destroy
  has_many_attached :image_toilets, dependent: :destroy
  belongs_to :genre
  belongs_to_active_hash :booking
  belongs_to :light
  belongs_to :reception
  belongs_to_active_hash :tobacco
  belongs_to_active_hash :budget
  belongs_to_active_hash :volume
  belongs_to_active_hash :parking
  belongs_to :place
  has_many :reservations, dependent: :destroy
  has_many :information_musics, dependent: :destroy
  has_many :musics, through: :information_musics, dependent: :destroy
  has_many :information_payments, dependent: :destroy
  has_many :payments, through: :information_payments, dependent: :destroy
  has_many :information_locations, dependent: :destroy
  has_many :locations, through: :information_locations, dependent: :destroy
  has_many :information_drinks, dependent: :destroy
  has_many :drinks, through: :information_drinks, dependent: :destroy
  has_many :information_services, dependent: :destroy
  has_many :services, through: :information_services, dependent: :destroy
  has_many :information_ages, dependent: :destroy
  has_many :ages, through: :information_ages, dependent: :destroy
  has_many :information_rooms, dependent: :destroy
  has_many :rooms, through: :information_rooms, dependent: :destroy
  has_many :information_spaces, dependent: :destroy
  has_many :spaces, through: :information_spaces, dependent: :destroy
  has_many :receipts, dependent: :destroy
  
  
  #バリデーション
  with_options presence: true do
    validates :store_name
    validates :email
    validates :city
    validates :image
    validates :image_foods
    validates :image_appearances
    validates :image_introspections
    validates :image_entrances
    validates :image_seats
    validates :image_toilets
    validates :age_ids
    validates :payment_ids
    validates :music_ids
    validates :postal_code,       format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "にハイフンを含めてください" }
    validates :tel,               format: { with: /\A\d{10,11}\z/}
    with_options numericality: { other_than: 1, message:'を選択してください'} do
      validates :genre_id
      validates :place_id
      validates :light_id
      validates :volume_id
      validates :budget_id
      validates :tobacco_id
    end
  end


end

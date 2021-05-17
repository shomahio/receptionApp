class Information < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :store, optional: true
  has_one_attached :image, dependent: :destroy
  has_many_attached :image_foods, dependent: :destroy
  has_many_attached :image_appearances, dependent: :destroy
  has_many_attached :image_introspections, dependent: :destroy
  has_many_attached :image_entrances, dependent: :destroy
  has_many_attached :image_seats, dependent: :destroy
  has_many_attached :image_views, dependent: :destroy
  has_many_attached :image_toilets, dependent: :destroy
  belongs_to :genre, optional: true
  belongs_to :booking, optional: true
  belongs_to :light, optional: true
  belongs_to :reception, optional: true
  belongs_to :tobacco, optional: true
  belongs_to :budget, optional: true
  belongs_to :volume, optional: true
  belongs_to :parking, optional: true
  belongs_to :place, optional: true
  belongs_to :holiday, optional: true
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
  
  
  # バリデーション
  with_options presence: {message: "を登録してください"}  do
    validates :store_name
    validates :postal_code,       format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "にハイフンを含めてください" }
    validates :city
    validates :address
    validates :tel,               format: { with: /\A\d{10,11}\z/}
    validates :email
    validates :genre_id
    validates :place_id
    validates :explanation
    validates :transportation
    validates :opening_time
    validates :closing_time
    validates :seet
    validates :image
    with_options numericality: { other_than: 1, message:'を選択してください'} do
      validates :light_id
      validates :volume_id
      validates :budget_id
      validates :tobacco_id
      validates :holiday_id
      validates :booking_id
      validates :parking_id
      validates :reception_id
    end
  end
  validate  :image_foods_length
  validate  :image_appearances_length
  validate  :image_introspections_length
  validate  :image_entrances_length
  validate  :image_seats_length
  validate  :image_views_length
  validate  :image_toilets_length

  private

  def image_foods_length
    if image_foods.length != 3
      errors.add(:image_foods, "は3枚にしてください")
    end
  end

  def image_appearances_length
    if image_appearances.length != 3
      errors.add(:image_appearances, "は3枚にしてください")
    end
  end


  def image_introspections_length
    if image_introspections.length != 3
      errors.add(:image_introspections, "は3枚にしてください")
    end
  end


  def image_entrances_length
    if image_entrances.length != 3
      errors.add(:image_entrances, "は3枚にしてください")
    end
  end


  def image_seats_length
    if image_seats.length != 3
      errors.add(:image_seats, "は3枚にしてください")
    end
  end

  def image_views_length
    if image_views.length != 3
      errors.add(:image_views, "は3枚にしてください")
    end
  end


  def image_toilets_length
    if image_toilets.length != 3
      errors.add(:image_toilets, "は3枚にしてください")
    end
  end


end

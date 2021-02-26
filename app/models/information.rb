class Information < ApplicationRecord
  belongs_to :store
  has_one_attached :image
  belongs_to :genre
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
  
  #バリデーション
  with_options presence: true do
    validates :store_name
    validates :email
    validates :city
    validates :image
    validates :age_ids
    validates :payment_ids
    validates :music_ids
    validates :postal_code,       format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "にハイフンを含めてください" }
    validates :password,          format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, length: { minimum: 6 }, message: '半角文字で英数どちらも最低１文字は使用してください' }
    validates :tel,               format: { with: /\A\d{10,11}\z/}
    with_options numericality: { other_than: 1, message:'を選択してください'} do
      validates :genre_id
      validates :place_id
      validates :prefecture_id
      validates :light_id
      validates :volume_id
      validates :budget_id
      validates :tobacco_id
    end
  end


end

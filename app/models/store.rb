class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :informations, dependent: :destroy

  #バリデーション
  with_options presence: {message: "を登録してください"} do
    validates :store_name
    validates :email
    validates :city
    validates :address
    validates :director
    validates :postal_code,       format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "にハイフンを含めてください" }
    validates :tel,               format: { with: /\A\d{10,11}\z/}
    validates :password,         format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, length: { minimum: 6 }, message: '半角文字で英数どちらも最低１文字は使用してください' }
    validates :prefecture_id, numericality: { other_than: 1, message:'を選択してください'}
  end

end

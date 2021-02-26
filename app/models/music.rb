class Music < ApplicationRecord
  has_many :information_musics, dependent: :destroy
  has_many :informations, through: :information_musics, dependent: :destroy
end

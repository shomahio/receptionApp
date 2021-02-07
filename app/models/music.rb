class Music < ApplicationRecord
  has_many :information_musics
  has_many :informations, through: :information_musics
end

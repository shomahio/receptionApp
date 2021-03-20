class Genre < ApplicationRecord
  has_many :informations
  has_ancestry

  def self.genre_parent_array_create
    genre_parent_array = ["---"]
    Genre.where(ancestry: nil).each do |parent|
      genre_parent_array <<  [parent.name]
    end
    return genre_parent_array
  end

end

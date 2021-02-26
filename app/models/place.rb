class Place < ApplicationRecord
  has_ancestry
  
  def self.place_parent_array_create
    place_parent_array = ["---"]
    Place.where(ancestry: nil).each do |parent|
      place_parent_array <<  [parent.name]
    end
    return place_parent_array
  end
end
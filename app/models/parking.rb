class Parking < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '駐車場あり'}, {id: 3, name: '駐車場なし'},
  ]
  include ActiveHash::Associations
  has_many :information
end
class Tobacco < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '全席禁煙'}, {id: 3, name: '全席喫煙'},
    {id: 4, name: '喫煙席あり（分煙）'}, {id: 5, name: '電子タバコのみ喫煙席あり'}, {id: 6, name: '喫煙ルームあり'}
  ]
  include ActiveHash::Associations
  has_many :information
end
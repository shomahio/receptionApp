class Light < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '明るい（寒色）'}, {id: 3, name: '明るい（暖色）'},
    {id: 4, name: '暗い（寒色）'}, {id: 5, name: '暗い（暖色）'}
  ]

  include ActiveHash::Associations
  has_many :informations

end

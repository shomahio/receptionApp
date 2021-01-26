class Drink < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: 'ワインあり'}, {id: 3, name: '日本酒あり'},
    {id: 4, name: '焼酎あり'}, {id: 5, name: 'おしゃれドリンクあり'}, {id: 6, name: 'カクテルあり'},
    {id: 7, name: 'ワインにこだわる'}, {id: 8, name: '日本酒にこだわる'} {id: 9, name: '焼酎にこだわる'},
    {id: 10, name: 'カクテルにこだわる'}
  ]

end

class Room < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '個室あり'}, {id: 3, name: '半個室あり'},
    {id: 4, name: 'カウンターあり'}, {id: 5, name: '立ち飲み'}
  ]

end

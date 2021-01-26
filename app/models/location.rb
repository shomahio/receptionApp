class Location < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '夜景が見える'}, {id: 3, name: 'ホテル内・ホテル直営'},
    {id: 4, name: '眺望がいい'}, {id: 5, name: '駅近'}, {id: 6, name: '海が見える'},
    {id: 7, name: '隠れ家レストラン'}, {id: 8, name: '一軒家レストラン'}
  ]

end

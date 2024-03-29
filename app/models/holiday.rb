class Holiday < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '日曜日'}, {id: 3, name: '月曜日'},
    {id: 4, name: '火曜日'}, {id: 5, name: '水曜日'}, {id: 6, name: '木曜日'},
    {id: 7, name: '金曜日'}, {id: 8, name: '土曜日'}, {id: 9, name: '定休日なし'}
  ]
  include ActiveHash::Associations
  has_many :informations
end
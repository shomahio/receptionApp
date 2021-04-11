class Reception < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '商談などの接待向きのお店'}, {id: 3, name: '会食などの接待向きのお店'},
    {id: 4, name: 'ご飯会などの接待向きのお店'}, {id: 5, name: '二件目向きのお店'}, {id: 6, name: '待ち合わせ向きのお店'}
  ]

  include ActiveHash::Associations
  has_many :informations

end

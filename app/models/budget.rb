class Budget < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '1000円以下'}, {id: 3, name: '1000円〜2000円'},
    {id: 4, name: '2000円〜3000円'}, {id: 5, name: '3000円〜4000円'}, {id: 6, name: '4000円〜5000円'}, 
    {id: 7, name: '5000円〜8000円'}, {id: 8, name: '8000円〜10000円'}, {id: 9, name: '10000円〜15000円'},
    {id: 10, name: '15000円〜20000円'}, {id: 11, name: '20000円〜40000円'}, {id: 12, name: '40000円〜60000円'},
    {id: 13, name: '60000円〜80000円'}, {id: 14, name: '80000円〜100000円'}, {id: 15, name: '100000円以上'}
  ]
  include ActiveHash::Associations
  has_many :information
end

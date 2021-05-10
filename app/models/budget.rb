class Budget < ActiveHash::Base
  self.data = [
    {id: 1, name: '---',min: 0}, {id: 2, name: '1000円以下', min: 0, max: 1000}, {id: 3, name: '1000円〜2000円', min: 1000, max: 2000},
    {id: 4, name: '2000円〜3000円', min: 2000, max: 3000}, {id: 5, name: '3000円〜4000円', min: 3000, max: 4000}, {id: 6, name: '4000円〜5000円', min: 4000, max: 5000}, 
    {id: 7, name: '5000円〜8000円', min: 5000, max: 8000}, {id: 8, name: '8000円〜10000円', min: 8000, max: 10000}, {id: 9, name: '10000円〜15000円', min: 10000, max: 15000},
    {id: 10, name: '15000円〜20000円', min: 15000, max: 20000}, {id: 11, name: '20000円〜40000円', min: 20000, max: 40000}, {id: 12, name: '40000円〜60000円', min: 40000, max: 60000},
    {id: 13, name: '60000円〜80000円', min: 60000, max: 80000}, {id: 14, name: '80000円〜100000円', min: 80000, max: 100000}, {id: 15, name: '100000円以上', min: 100000, max: 1000000}
  ]
  include ActiveHash::Associations
  has_many :informations
end

class Consumer < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '男性が多い'}, {id: 3, name: '女性が多い'},
    {id: 4, name: 'カップルが多い'},{id: 5, name: '家族連れが多い'}
  ]

end

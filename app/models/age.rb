class Age < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '１０代の利用者が多い'}, {id: 3, name: '２０代の利用者が多い'}, 
    {id: 4, name: '３０代の利用者が多い'},{id: 5, name: '４０代の利用者が多い'}, {id: 6, name: '５０代の利用者が多い'},
    {id: 7, name: '６０代以上の利用者が多い'}
  ]
end

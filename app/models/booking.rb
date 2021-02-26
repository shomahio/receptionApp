class Booking < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '予約可能'}, {id: 3, name: '予約不可'},
  ]
end
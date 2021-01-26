class Payment < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: 'クレジットカード可'}, {id: 3, name: '現金のみ'},
    {id: 4, name: '電子マネー決済可'}, {id: 5, name: '領収書支払い可'},
  ]

end

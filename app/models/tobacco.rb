class Tobacco < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '全席禁煙'}, {id: 3, name: '全席喫煙可'},
    {id: 4, name: '喫煙席あり'}, {id: 5, name: '電子タバコのみ喫煙席あり'}, {id: 6, name: '電子タバコのみの喫煙席あり'}
  ]

end

class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: '和食'}, {id: 3, name: '洋食・西洋料理'},
    {id: 4, name: '中華料理'}, {id: 5, name: 'アジア・エスニック'}, {id: 6, name: '焼肉・ホルモン'}, 
    {id: 7, name: '鍋'}, {id: 8, name: '居酒屋・ダイニングバー'}, {id: 9, name: '創作料理・無国籍料理'},
    {id: 10, name: 'レストラン'}, {id: 11, name: 'カフェ'}, {id: 12, name: '喫茶店'},
    {id: 13, name: 'スイーツ'}, {id: 14, name: 'バー'}, {id: 15, name: 'パブ'},
    {id: 16, name: 'ラウンジ'}, {id: 17, name: 'ビアバー'}, {id: 18, name: 'スポーツバー'},
    {id: 19, name: 'バー・お酒（その他）'}, {id: 20, name: '旅館'}, {id: 21, name: 'オーベルジュ'}
  ]
end

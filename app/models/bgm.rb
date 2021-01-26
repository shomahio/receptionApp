class Bgm < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: 'BGMなし'}, {id: 3, name: '洋楽（アップテンポ）'},
    {id: 4, name: '邦楽（スローテンポ）'}, {id: 5, name: '邦楽（アップテンポ）'}, {id: 6, name: '邦楽（スローテンポ）'},
    {id: 7, name: 'クラシック'}, {id: 8, name: 'ジャズ'}, {id: 9, name: 'R＆B'}
  ]
end

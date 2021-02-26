class Light < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: 'かなり明るい（暖色）'}, {id: 3, name: '明るい（暖色）'},
    {id: 4, name: '暗い（暖色）'}, {id: 5, name: 'かなり暗い（暖色）'}, {id: 6, name: 'かなり明るい（寒色）'},
    {id: 7, name: '明るい（寒色）'}, {id: 8, name: '暗い（寒色）'}, {id: 9, name: 'かなり暗い（寒色）'}
  ]

end

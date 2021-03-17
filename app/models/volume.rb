class Volume < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'}, {id: 2, name: 'ほぼ無音'}, {id: 3, name: '静か'}, {id: 4, name: '近くの人の小声が聞こえるくらいの大きさ'},
    {id: 5, name: '話し声が聞こえるくらいの大きさ'}, {id: 6, name: 'とても賑やか'}
  ]
  include ActiveHash::Associations
  has_many :informations
end

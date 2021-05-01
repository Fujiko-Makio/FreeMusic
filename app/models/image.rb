class Image < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '明るい' },
    { id: 3, name: '激しい' },
    { id: 4, name: '暗い' },
    { id: 5, name: '静か/リラックス' },
    { id: 6, name: '悲しい/感動的' },
    { id: 7, name: 'ホラー/怖い' },
    { id: 8, name: '民族' },
    { id: 9, name: '効果音/BGM' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :musics

end
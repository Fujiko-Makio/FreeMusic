class Genre < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: 'ポップス' },
   { id: 3, name: 'ロック' },
   { id: 4, name: 'メタル' },
   { id: 5, name: 'クラシック' },
   { id: 6, name: 'ジャズ' },
   { id: 7, name: 'レゲェ' },
   { id: 8, name: 'アコースティック' },
   { id: 9, name: 'エレクトロニック' },
   { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :musics
  has_many :products

end
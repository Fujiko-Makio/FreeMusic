class Music < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :image

  belongs_to :user
  has_one_attached :sound



  with_options presence: true do
    validates :sound, blob: { content_type: ['audio/mpeg', 'audio/mp3'] }
    validates :musics_name
    validates :description
  end

  with_options presence: true, numericality: { other_than: 1, message: 'Select' } do
    validates :genre_id
    validates :image_id
  end

end

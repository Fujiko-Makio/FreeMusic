class Music < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :image

  belongs_to :user
  has_one_attached :sound

  with_options presence: true do
    validates :sound
    validates :musics_name
    validates :description
  end

  with_options presence: true, numericality: { other_than: 1, message: 'Select' } do
    validates :genre_id
    validates :image_id
  end

  validates :price, presence: true, format: {with: /\A[0-9]+\z/, message: 'Half-width number'}, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: 'Out of setting range'}

end

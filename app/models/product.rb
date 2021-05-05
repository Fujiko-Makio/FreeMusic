class Product < ApplicationRecord
  belongs_to :music
  belongs_to :image
  belongs_to :genre
end
